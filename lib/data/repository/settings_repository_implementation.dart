import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/domain/repository/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  @override
  Future<UserInfo> getUserInfoFromStorage() async {
    const storage = FlutterSecureStorage();
    final retrievedUserInfo = await storage.read(key: 'profile') ?? '{}';
    return UserInfo.fromJson(retrievedUserInfo as Map<String, dynamic>);
  }

  @override
  Future<void> setUserInfoToStorage(UserInfo user) async {
    log('saving setting to local storage');
    const storage = FlutterSecureStorage();
    await storage.write(key: 'profile', value: user.toJson().toString());
  }
}
