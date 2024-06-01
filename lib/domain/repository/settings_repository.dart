import 'package:synapserx_v2/domain/models/user_info.dart';

abstract class SettingsRepository {
  Future<UserInfo?> getUserInfoFromStorage();
  Future<void> setUserInfoToStorage(UserInfo user);
}
