// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactionresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionResponseImpl _$$TransactionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionResponseImpl(
      transactionsCount: (json['transactionsCount'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransactionResponseImplToJson(
        _$TransactionResponseImpl instance) =>
    <String, dynamic>{
      'transactionsCount': instance.transactionsCount,
      'page': instance.page,
      'transactions': instance.transactions,
    };
