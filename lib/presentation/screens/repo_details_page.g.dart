// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_details_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchRepoDetailHash() => r'e8ad4c7b0e4c4385131c38663d181e21ba99c636';

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

typedef FetchRepoDetailRef = AutoDisposeFutureProviderRef<RepositoryDetail>;

/// See also [fetchRepoDetail].
@ProviderFor(fetchRepoDetail)
const fetchRepoDetailProvider = FetchRepoDetailFamily();

/// See also [fetchRepoDetail].
class FetchRepoDetailFamily extends Family<AsyncValue<RepositoryDetail>> {
  /// See also [fetchRepoDetail].
  const FetchRepoDetailFamily();

  /// See also [fetchRepoDetail].
  FetchRepoDetailProvider call({
    required String repoName,
    required String owner,
  }) {
    return FetchRepoDetailProvider(
      repoName: repoName,
      owner: owner,
    );
  }

  @override
  FetchRepoDetailProvider getProviderOverride(
    covariant FetchRepoDetailProvider provider,
  ) {
    return call(
      repoName: provider.repoName,
      owner: provider.owner,
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
  String? get name => r'fetchRepoDetailProvider';
}

/// See also [fetchRepoDetail].
class FetchRepoDetailProvider
    extends AutoDisposeFutureProvider<RepositoryDetail> {
  /// See also [fetchRepoDetail].
  FetchRepoDetailProvider({
    required this.repoName,
    required this.owner,
  }) : super.internal(
          (ref) => fetchRepoDetail(
            ref,
            repoName: repoName,
            owner: owner,
          ),
          from: fetchRepoDetailProvider,
          name: r'fetchRepoDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRepoDetailHash,
          dependencies: FetchRepoDetailFamily._dependencies,
          allTransitiveDependencies:
              FetchRepoDetailFamily._allTransitiveDependencies,
        );

  final String repoName;
  final String owner;

  @override
  bool operator ==(Object other) {
    return other is FetchRepoDetailProvider &&
        other.repoName == repoName &&
        other.owner == owner;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, repoName.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
