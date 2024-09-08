import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/domain/models/useraccounts.dart';
import 'package:synapserx_v2/domain/repository/settings_repository.dart';

abstract class SettingsUseCase {
  Future<UserInfo?> getUserInfoFromStorage();
  Future<void> setUserInfoToStorage(UserInfo user);
  Future<List<UserAccount>> getUserAccountsFromStorage();
  Future<void> addUserAccount(UserAccount userAccount);
  Future<void> makeInstituitionDefault(String accountID);
}

class SettingsUseCaseImpl extends SettingsUseCase {
  final SettingsRepository settingsRepository;

  SettingsUseCaseImpl(this.settingsRepository);

  @override
  Future<UserInfo?> getUserInfoFromStorage() async {
    return await settingsRepository.getUserInfoFromStorage();
  }

  @override
  Future<void> setUserInfoToStorage(UserInfo user) async {
    await settingsRepository.setUserInfoToStorage(user);
  }

  @override
  Future<List<UserAccount>> getUserAccountsFromStorage() async {
    return await settingsRepository.getUserAccounts();
  }

  @override
  Future<void> addUserAccount(UserAccount userAccount) async {
    await settingsRepository.addUserAccount(userAccount);
  }

  @override
  Future<void> makeInstituitionDefault(String accountID) async {
    return await settingsRepository.makeInstituitionDefault(accountID);
  }
}
