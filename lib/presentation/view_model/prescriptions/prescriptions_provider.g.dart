// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescriptions_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchPrescriptionHash() => r'3b174663b11e9175464be4006f7a06e73e0f4675';

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

/// See also [fetchPrescription].
@ProviderFor(fetchPrescription)
const fetchPrescriptionProvider = FetchPrescriptionFamily();

/// See also [fetchPrescription].
class FetchPrescriptionFamily extends Family<AsyncValue<Prescription>> {
  /// See also [fetchPrescription].
  const FetchPrescriptionFamily();

  /// See also [fetchPrescription].
  FetchPrescriptionProvider call(
    String prescriptionId,
  ) {
    return FetchPrescriptionProvider(
      prescriptionId,
    );
  }

  @override
  FetchPrescriptionProvider getProviderOverride(
    covariant FetchPrescriptionProvider provider,
  ) {
    return call(
      provider.prescriptionId,
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
  String? get name => r'fetchPrescriptionProvider';
}

/// See also [fetchPrescription].
class FetchPrescriptionProvider
    extends AutoDisposeFutureProvider<Prescription> {
  /// See also [fetchPrescription].
  FetchPrescriptionProvider(
    String prescriptionId,
  ) : this._internal(
          (ref) => fetchPrescription(
            ref as FetchPrescriptionRef,
            prescriptionId,
          ),
          from: fetchPrescriptionProvider,
          name: r'fetchPrescriptionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPrescriptionHash,
          dependencies: FetchPrescriptionFamily._dependencies,
          allTransitiveDependencies:
              FetchPrescriptionFamily._allTransitiveDependencies,
          prescriptionId: prescriptionId,
        );

  FetchPrescriptionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.prescriptionId,
  }) : super.internal();

  final String prescriptionId;

  @override
  Override overrideWith(
    FutureOr<Prescription> Function(FetchPrescriptionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPrescriptionProvider._internal(
        (ref) => create(ref as FetchPrescriptionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        prescriptionId: prescriptionId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Prescription> createElement() {
    return _FetchPrescriptionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPrescriptionProvider &&
        other.prescriptionId == prescriptionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, prescriptionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchPrescriptionRef on AutoDisposeFutureProviderRef<Prescription> {
  /// The parameter `prescriptionId` of this provider.
  String get prescriptionId;
}

class _FetchPrescriptionProviderElement
    extends AutoDisposeFutureProviderElement<Prescription>
    with FetchPrescriptionRef {
  _FetchPrescriptionProviderElement(super.provider);

  @override
  String get prescriptionId =>
      (origin as FetchPrescriptionProvider).prescriptionId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
