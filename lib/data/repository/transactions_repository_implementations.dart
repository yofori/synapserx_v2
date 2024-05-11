import 'package:dio/dio.dart';
import 'package:synapserx_v2/domain/models/transactionresponse.dart';
import 'package:synapserx_v2/domain/repository/transactions_repository.dart';

import '../../common/dio_client.dart';

class TransactionsRepositoryImpl implements TransactionsRepository {
  @override
  Future<TransactionResponse> getTransactions(int page) async {
    try {
      final response = await DioClient.instance.get(
          '/transaction/getprescribertransactions',
          queryParameters: {"page": page});
      return TransactionResponse.fromJson(response);
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }
}
