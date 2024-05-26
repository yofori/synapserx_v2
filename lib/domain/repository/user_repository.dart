import 'package:synapserx_v2/domain/models/user.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';

abstract class UserRepository {
  Future<User> registerUser(User user);
  Future<UserInfo> fetchUserProfile();
  Future<UserInfo> updateUserProfile();
  Future<UserInfo> createUserProfile(UserInfo userInfo);
}
