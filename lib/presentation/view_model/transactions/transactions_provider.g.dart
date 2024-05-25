// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchTransactionsHash() => r'04ed6d747ca3697d963829de18bfd8fa6daebc6a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchTransactions].
@ProviderFor(fetchTransactions)
const fetchTransactionsProvider = FetchTransactionsFamily();

/// See also [fetchTransactions].
class FetchTransactionsFamily extends Family<AsyncValue<TransactionResponse>> {
  /// See also [fetchTransactions].
  const FetchTransactionsFamily();

  /// See also [fetchTransactions].
  FetchTransactionsProvider call(
    int page,
    String searchString,
  ) {
    return FetchTransactionsProvider(
      page,
      searchString,
    );
  }

  @override
  FetchTransactionsProvider getProviderOverride(
    covariant FetchTransactionsProvider provider,
  ) {
    return call(
      provider.page,
      provider.searchString,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchTransactionsProvider';
}

/// See also [fetchTransactions].
class FetchTransactionsProvider
    extends AutoDisposeFutureProvider<TransactionResponse> {
  /// See also [fetchTransactions].
  FetchTransactionsProvider(
    int page,
    String searchString,
  ) : this._internal(
          (ref) => fetchTransactions(
            ref as FetchTransactionsRef,
            page,
            searchString,
          ),
          from: fetchTransactionsProvider,
          name: r'fetchTransactionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTransactionsHash,
          dependencies: FetchTransactionsFamily._dependencies,
          allTransitiveDependencies:
              FetchTransactionsFamily._allTransitiveDependencies,
          page: page,
          searchString: searchString,
        );

  FetchTransactionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.searchString,
  }) : super.internal();

  final int page;
  final String searchString;

  @override
  Override overrideWith(
    FutureOr<TransactionResponse> Function(FetchTransactionsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTransactionsProvider._internal(
        (ref) => create(ref as FetchTransactionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        searchString: searchString,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<TransactionResponse> createElement() {
    return _FetchTransactionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTransactionsProvider &&
        other.page == page &&
        other.searchString == searchString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, searchString.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchTransactionsRef
    on AutoDisposeFutureProviderRef<TransactionResponse> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `searchString` of this provider.
  String get searchString;
}

class _FetchTransactionsProviderElement
    extends AutoDisposeFutureProviderElement<TransactionResponse>
    with FetchTransactionsRef {
  _FetchTransactionsProviderElement(super.provider);

  @override
  int get page => (origin as FetchTransactionsProvider).page;
  @override
  String get searchString => (origin as FetchTransactionsProvider).searchString;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
