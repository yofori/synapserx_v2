import 'package:synapserx_v2/domain/models/user.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/domain/repository/user_repository.dart';

abstract class UserUseCase {
  Future<void> registerUser(User user);
  Future<UserInfo> fetchUserProfile();
  Future<UserInfo> updateUserProfile(UserInfo userInfo);
  Future<UserInfo> createUserProfile(UserInfo userInfo);
}

class UserUseCaseImpl extends UserUseCase {
  final UserRepository userRepository;

  UserUseCaseImpl(this.userRepository);

  @override
  Future<void> registerUser(User user) async {
    await userRepository.registerUser(user);
  }

  @override
  Future<UserInfo> fetchUserProfile() async {
    return await userRepository.fetchUserProfile();
  }

  @override
  Future<UserInfo> updateUserProfile(UserInfo userInfo) async {
    return await userRepository.updateUserProfile(userInfo);
  }

  @override
  Future<UserInfo> createUserProfile(UserInfo userInfo) async {
    return await userRepository.createUserProfile(userInfo);
  }
}
