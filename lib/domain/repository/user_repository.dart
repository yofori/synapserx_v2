import 'package:synapserx_v2/domain/models/user.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';

abstract class UserRepository {
  Future<User> registerUser(User user);
  Future<UserInfo> fetchUserProfile();
  Future<UserInfo> updateUserProfile(UserInfo userInfo);
  Future<UserInfo> createUserProfile(UserInfo userInfo);
}
