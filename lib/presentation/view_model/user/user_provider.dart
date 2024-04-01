import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synapserx_v2/common/service.dart';
import 'package:synapserx_v2/domain/models/user.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/domain/usecases/provider.dart';

part 'user_provider.g.dart';

@riverpod
class UserProfile extends _$UserProfile {
  late UserInfo userInfo;

  Future<void> registerUser(User user) async {
    state = const AsyncLoading();
    await ref.watch(userDataProvider).registerUser(user);
  }

  Future<UserInfo> fetchUser() async {
    state = const AsyncLoading();
    final userInfo = await ref.watch(userDataProvider).fetchUserProfile();
    GlobalData.firstname = userInfo.firstname.toString();
    GlobalData.surname = userInfo.surname.toString();
    GlobalData.fullname =
        '${userInfo.title.toString()} ${userInfo.firstname.toString()} ${userInfo.surname.toString()}';
    return userInfo;
  }

  Future<String> getUserFullName() async {
    state = const AsyncLoading();
    final userInfo = await ref.watch(userDataProvider).fetchUserProfile();
    var fullname =
        '${userInfo.title} ${userInfo.firstname} ${userInfo.surname}';
    return fullname;
  }

  @override
  FutureOr<UserInfo> build() async {
    return fetchUser();
  }
}
