import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/data/repository/prescriptions_repository_implementation.dart';
import 'package:synapserx_v2/data/repository/settings_repository_implementation.dart';
import 'package:synapserx_v2/data/repository/system_repository_implementation.dart';
import 'package:synapserx_v2/data/repository/user_repository_implementation.dart';
import 'package:synapserx_v2/domain/repository/system_repository.dart';
import 'package:synapserx_v2/domain/repository/user_repository.dart';

import '../../domain/repository/transactions_repository.dart';
import 'transactions_repository_implementations.dart';

final userProfileProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl();
});

final getADImagesProvider = Provider<SystemRepository>((ref) {
  return SystemRepositoryImpl();
});

final getTransactionsProvider = Provider<TransactionsRepository>((ref) {
  return TransactionsRepositoryImpl();
});

final getPrescriptionProvider = Provider<PrescriptionRepositoryImpl>((ref) {
  return PrescriptionRepositoryImpl();
});

final settingsProvider = Provider<SettingsRepositoryImpl>((ref) {
  return SettingsRepositoryImpl();
});
