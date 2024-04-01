import '../models/transaction.dart';

abstract class TransactionsRepository {
  Future<List<Transaction>> getLast10Transactions();
  Future<List<Transaction>> getTransactions();
}
