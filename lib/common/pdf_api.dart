import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:share_plus/share_plus.dart';
import 'previewscreen.dart';

class PdfApi {
  static Future<File> saveDocument({
    required String name,
    required pw.Document pdf,
  }) async {
    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name.pdf');
    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;
    //log(url);
    await OpenFile.open(url);
  }

  static Future sharePDF(
      BuildContext context, File file, String subject) async {
    final box = context.findRenderObject() as RenderBox;
    await Share.shareXFiles([XFile(file.path)],
        subject: subject,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    await File(file.path).delete(); //delete file after opening it);;
  }

  static Future previewPDF(BuildContext context, File file) async {
    Uint8List bytes = file.readAsBytesSync();
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PreviewScreen(bytes: bytes)));
    await File(file.path).delete(); //delete file after opening it);
  }
}
