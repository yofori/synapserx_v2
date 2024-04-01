import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:synapserx_v2/domain/models/transaction.dart';
import 'package:synapserx_v2/domain/repository/transactions_repository.dart';

import '../../common/dio_client.dart';

class TransactionsRepositoryImpl implements TransactionsRepository {
  @override
  Future<List<Transaction>> getTransactions() async {
    try {
      final response = await DioClient.instance.get(
        '/transaction/getprescribertransactions',
      );
      return (response as List).map((x) => Transaction.fromJson(x)).toList();
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }

  @override
  Future<List<Transaction>> getLast10Transactions() async {
    try {
      final response = await DioClient.instance.get(
        '/transaction/getlast10prescribertransactions',
      );
      return (response as List).map((x) => Transaction.fromJson(x)).toList();
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }
}
