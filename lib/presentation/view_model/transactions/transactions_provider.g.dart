// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$transactionsListHash() => r'580681b4609deabf832b22669461e19e47438cac';

/// See also [TransactionsList].
@ProviderFor(TransactionsList)
final transactionsListProvider = AutoDisposeAsyncNotifierProvider<
    TransactionsList, List<Transaction>>.internal(
  TransactionsList.new,
  name: r'transactionsListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$transactionsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TransactionsList = AutoDisposeAsyncNotifier<List<Transaction>>;
String _$last10TransactionsHash() =>
    r'521037369b535ee126ba903835125b20e6485f79';

/// See also [Last10Transactions].
@ProviderFor(Last10Transactions)
final last10TransactionsProvider = AutoDisposeAsyncNotifierProvider<
    Last10Transactions, List<Transaction>>.internal(
  Last10Transactions.new,
  name: r'last10TransactionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$last10TransactionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Last10Transactions = AutoDisposeAsyncNotifier<List<Transaction>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
