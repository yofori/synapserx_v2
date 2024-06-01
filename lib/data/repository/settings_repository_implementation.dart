import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
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
    log('saving setting to local storage');
    final String userJson = jsonEncode(user.toJson());
    log(userJson);
    await storage.write(key: 'profile', value: userJson);
  }
}
