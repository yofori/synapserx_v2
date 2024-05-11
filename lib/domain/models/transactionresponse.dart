import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synapserx_v2/domain/models/transaction.dart';

part 'transactionresponse.g.dart';
part 'transactionresponse.freezed.dart';

@freezed
class TransactionResponse with _$TransactionResponse {
  factory TransactionResponse({
    required int transactionsCount,
    required int page,
    required List<Transaction> transactions,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);
}
