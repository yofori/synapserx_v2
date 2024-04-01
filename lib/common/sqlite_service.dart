import 'dart:developer';
import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../domain/models/analysisrequests.dart';
import '../domain/models/formulary.dart';
import 'service.dart';

import 'package:flutter/services.dart';
import 'package:minio_new/minio.dart';

class SqliteService {
  static const String databaseName = "synapserxdb.db";
  SqliteService._();
  static final SqliteService db = SqliteService._();
  static Database? _database;

  Future<Database> get database async => _database ??= await initDB();

  Future<Database> initDB() async {
    var databasesPath = await getDatabasesPath();
    final path = join(databasesPath, databaseName);
    // Check if the database exists
    bool exists = await databaseExists(path);
    if (!exists) {
      try {
        await io.Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      try {
        //copy sqlite database from asset folder
        log('copyng from asset folder');
        await copyDBFromAsset(path);
      } catch (err) {
        log(err.toString());
      }
    } else {
      log("Opening existing database");
    }
    return await openDatabase(path, readOnly: true);
  }

  // copy db from asset folder

  copyDBFromAsset(path) async {
    // Copy from asset
    log("copying initial db from assets");
    ByteData data = await rootBundle.load(join("assets/db", databaseName));
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

    // Write and flush the bytes written
    await io.File(path).writeAsBytes(bytes, flush: true);
    // Write current db version into secure storage setting
    GlobalData.currentDBVersion = 1;
  }

  // get all the drugs in the database
  Future<List<Medicines>> getMedicines() async {
    final db = await database;

    final List<Map<String, Object?>> queryResult = await db.query('medicines');
    return queryResult.map((e) => Medicines.fromMap(e)).toList();
  }

  Future<List<Medicines>> searchMedicines(String searchString) async {
    final db = await database;

    final List<Map<String, Object?>> queryResult = await db.rawQuery(
        "SELECT * From medicines WHERE genericName LIKE '$searchString%' OR  brandName LIKE '$searchString%'");
    return queryResult.map((e) => Medicines.fromMap(e)).toList();
  }

  Future<List<AnalysisRequest>> getAnalysisRequests() async {
    final db = await database;

    final List<Map<String, Object?>> queryResult =
        await db.query('analysisrequests');
    return queryResult.map((e) => AnalysisRequest.fromMap(e)).toList();
  }

  Future<List<AnalysisRequest>> filterAnalysisRequests(
      String searchString) async {
    final db = await database;

    final List<Map<String, Object?>> queryResult = await db.rawQuery(
        "SELECT * From analysisrequests WHERE diagnosticService = '$searchString'");
    return queryResult.map((e) => AnalysisRequest.fromMap(e)).toList();
  }

  Future checkForDBUpdates() async {
    // try {
    //   var currentdb = await _dioClient.getDBCurrentVersion();
    //   var version = currentdb['version'];
    //   if (version > GlobalData.currentDBVersion) {
    //     String object = currentdb['object'];
    //     String accessKey = currentdb['accessKey'];
    //     String secretKey = currentdb['secretKey'];
    //     String endPoint = currentdb['endPoint'];
    //     copyDBFromInternet(endPoint, accessKey, secretKey, object, version);
    //   } else {
    //     Fluttertoast.showToast(
    //         toastLength: Toast.LENGTH_SHORT,
    //         msg: 'Current Database is up to date',
    //         backgroundColor: Colors.deepPurple);
    //   }
    // } catch (_) {
    //   Fluttertoast.showToast(
    //       toastLength: Toast.LENGTH_SHORT,
    //       msg: 'Error fetching updates. Try again',
    //       backgroundColor: Colors.deepPurple);
    // }
  }

  Future copyDBFromInternet(String endPoint, String accessKey, String secretKey,
      String object, var version) async {
    var databasesPath = await getDatabasesPath();
    final path = join(databasesPath, databaseName);
    final minio = Minio(
      endPoint: endPoint,
      accessKey: accessKey,
      secretKey: secretKey,
    );
    log('copying db from internet');

    try {
      await minio.getObject('synapserx', object).then((stream) async {
        await stream.pipe(io.File(path).openWrite());
        GlobalData.currentDBVersion = version.toDouble();
        const storage = FlutterSecureStorage();
        await storage.write(key: "currentDBVersion", value: version.toString());
        Fluttertoast.showToast(
            toastLength: Toast.LENGTH_SHORT,
            msg: 'Database updates successfully downloaded',
            backgroundColor: Colors.deepPurple);
      });
    } catch (err) {
      log(err.toString());
    }
  }
}
