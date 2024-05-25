import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/data/repository/provider.dart';
import 'package:synapserx_v2/domain/usecases/prescription_usecase.dart';
import 'package:synapserx_v2/domain/usecases/user_usecase.dart';

import 'system_usecase.dart';
import 'transactions_usecase.dart';

final userDataProvider = Provider<UserUseCase>((ref) {
  return UserUseCaseImpl(ref.read(registerUserProvider));
});

final systemDataProvider = Provider<SystemUseCase>((ref) {
  return SystemUseCaseImpl(ref.read(getADImagesProvider));
});

final transactionsDataProvider = Provider<TransactionsUseCase>((ref) {
  return TransactionsUseCaseImpl(ref.read(getTransactionsProvider));
});

final prescriptionDataProvider = Provider<PrescriptionUseCase>((ref) {
  return PrescriptionUseCaseImpl(ref.read(getPrescriptionProvider));
});
