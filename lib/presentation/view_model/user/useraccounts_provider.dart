import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synapserx_v2/data/repository/provider.dart';
import 'package:synapserx_v2/domain/models/useraccounts.dart';

part 'useraccounts_provider.g.dart';

@riverpod
class UserAccounts extends _$UserAccounts {
  Future<List<UserAccount>> _fetchUserAccounts() async {
    final userAccounts = await ref.watch(settingsProvider).getUserAccounts();
    return userAccounts;
  }

  @override
  FutureOr<List<UserAccount>> build() async {
    // Load initial user account list from the secure storage
    return _fetchUserAccounts();
  }

  Future<void> addUserAccount(UserAccount userAccount) async {
    // Set the state to loading
    state = const AsyncValue.loading();
    // Add the new todo and reload the todo list from the remote repository
    state = await AsyncValue.guard(() async {
      await ref.read(settingsProvider).addUserAccount(userAccount);
      return _fetchUserAccounts();
    });
  }
}
