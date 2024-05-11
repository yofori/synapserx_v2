import 'package:synapserx_v2/domain/models/transactionresponse.dart';

abstract class TransactionsRepository {
  Future<TransactionResponse> getTransactions(int page);
}
