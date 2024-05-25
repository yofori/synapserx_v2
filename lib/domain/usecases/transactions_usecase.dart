import 'package:synapserx_v2/domain/models/transactionresponse.dart';

import '../repository/transactions_repository.dart';

abstract class TransactionsUseCase {
  Future<TransactionResponse> getTransactions(int page, String searchString);
}

class TransactionsUseCaseImpl extends TransactionsUseCase {
  final TransactionsRepository transactionsRepository;

  TransactionsUseCaseImpl(this.transactionsRepository);

  @override
  Future<TransactionResponse> getTransactions(
      int page, String searchString) async {
    return await transactionsRepository.getTransactions(page, searchString);
  }
}
