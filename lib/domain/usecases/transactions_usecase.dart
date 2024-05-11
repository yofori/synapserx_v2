import 'package:synapserx_v2/domain/models/transactionresponse.dart';

import '../repository/transactions_repository.dart';

abstract class TransactionsUseCase {
  Future<TransactionResponse> getTransactions(int page);
}

class TransactionsUseCaseImpl extends TransactionsUseCase {
  final TransactionsRepository transactionsRepository;

  TransactionsUseCaseImpl(this.transactionsRepository);

  @override
  Future<TransactionResponse> getTransactions(int page) async {
    return await transactionsRepository.getTransactions(page);
  }
}
