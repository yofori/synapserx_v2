import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.g.dart';
part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    @JsonKey(name: '_id') required String id,
    required String prescriberuid,
    required String patientuid,
    required String status,
    required String patientFullname,
    required String prescriberFullname,
    required String transactionType,
    required String transactionAction,
    required String transactionRef,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
