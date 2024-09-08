import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/domain/models/useraccounts.dart';

abstract class SettingsRepository {
  Future<UserInfo?> getUserInfoFromStorage();
  Future<void> setUserInfoToStorage(UserInfo user);
  Future<List<UserAccount>> getUserAccounts();
  Future<void> addUserAccount(UserAccount userAccount);
  Future<void> updateUserAccount(UserAccount userAccount);
  Future<void> makeInstituitionDefault(String accountID);
  Future<void> deleteUserAccount(String accountID);
}
