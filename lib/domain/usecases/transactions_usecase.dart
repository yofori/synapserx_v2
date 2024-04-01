import 'package:synapserx_v2/domain/models/transaction.dart';

import '../repository/transactions_repository.dart';

abstract class TransactionsUseCase {
  Future<List<Transaction>> getTransactions();
  Future<List<Transaction>> getLast10Transactions();
}

class TransactionsUseCaseImpl extends TransactionsUseCase {
  final TransactionsRepository transactionsRepository;

  TransactionsUseCaseImpl(this.transactionsRepository);

  @override
  Future<List<Transaction>> getTransactions() async {
    return await transactionsRepository.getTransactions();
  }

  @override
  Future<List<Transaction>> getLast10Transactions() async {
    return await transactionsRepository.getLast10Transactions();
  }
}
