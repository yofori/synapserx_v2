import 'package:dio/dio.dart';
import 'package:synapserx_v2/common/dio_client.dart';
import 'package:synapserx_v2/domain/models/user.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> registerUser(User user) async {
    try {
      final response = await DioClient.instance.post(
        '/user/register',
        data: user.toJson(),
      );
      return User.fromJson(response);
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }

  @override
  Future<UserInfo> fetchUserProfile() async {
    try {
      final response = await DioClient.instance.get(
        '/user/getuserinfo',
      );
      return UserInfo.fromJson(response);
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }

  @override
  Future<UserInfo> updateUserProfile(UserInfo userInfo) async {
    try {
      final response = await DioClient.instance
          .put('/user/updateuserinfo', data: userInfo.toJson());
      return UserInfo.fromJson(response);
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }

  @override
  Future<UserInfo> createUserProfile(UserInfo userInfo) async {
    try {
      final response = await DioClient.instance
          .post('/user/createuserinfo', data: userInfo.toJson());
      return UserInfo.fromJson(response);
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }

  @override
  Future<void> changePassword(String password) async {
    try {
      await DioClient.instance.post('/user/changepassword',
          queryParameters: {"password": password});
    } on DioException catch (err) {
      throw err.response.toString();
    }
  }
}
