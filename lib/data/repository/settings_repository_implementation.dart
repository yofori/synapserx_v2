import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synapserx_v2/common/dio_client.dart';
import 'package:synapserx_v2/data/repository/user_repository_implementation.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/domain/models/useraccounts.dart';
import 'package:synapserx_v2/domain/repository/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  @override
  Future<UserInfo?> getUserInfoFromStorage() async {
    final String? userJson = await storage.read(key: 'profile');
    if (userJson != null) {
      final Map<String, dynamic> userMap = jsonDecode(userJson);
      return UserInfo.fromJson(userMap);
    }
    return null;
  }

  @override
  Future<void> setUserInfoToStorage(UserInfo user) async {
    final String userJson = jsonEncode(user.toJson());
    await storage.write(key: 'profile', value: userJson);
  }

  @override
  Future<List<UserAccount>> getUserAccounts() async {
    final userInfo = await UserRepositoryImpl().fetchUserProfile();
    final userAccounts = userInfo.prescriberInstitutions ?? [];
    return userAccounts;
  }

  @override
  Future<void> addUserAccount(UserAccount userAccount) async {
    await DioClient.instance
        .put('/user/addinstitution', data: jsonEncode(userAccount));
  }

  @override
  Future<void> updateUserAccount(UserAccount userAccount) async {
    await DioClient.instance
        .put('/user/updateinstitution/', data: jsonEncode(userAccount));
    await Fluttertoast.showToast(
        toastLength: Toast.LENGTH_SHORT,
        msg: '${userAccount.institutionName} updated',
        backgroundColor: Colors.green);
  }

  @override
  Future<void> makeInstituitionDefault(String accountID) async {
    try {
      await DioClient.instance.post('/user/makeinstitutiondefault/',
          queryParameters: {"accountid": accountID});
      await Fluttertoast.showToast(
          toastLength: Toast.LENGTH_SHORT,
          msg: 'Successfully changed default Account',
          backgroundColor: Colors.green);
    } on DioException catch (err) {
      throw err.response.toString();
    }
  }

  @override
  Future<void> deleteUserAccount(String accountID) async {
    try {
      await DioClient.instance.post('/user/deleteinstitution/',
          queryParameters: {"accountid": accountID});
      await Fluttertoast.showToast(
          toastLength: Toast.LENGTH_SHORT,
          msg: 'Account deleted successfully',
          backgroundColor: Colors.green);
    } on DioException catch (err) {
      throw err.response.toString();
    }
  }
}
