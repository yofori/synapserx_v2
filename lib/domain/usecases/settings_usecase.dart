import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/domain/repository/settings_repository.dart';

abstract class SettingsUseCase {
  Future<UserInfo?> getUserInfoFromStorage();
  Future<void> setUserInfoToStorage(UserInfo user);
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
}
