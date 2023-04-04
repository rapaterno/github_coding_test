// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchReposHash() => r'b4ca3fccfa4e2e78f55e7920c233f292ce6a3675';

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

typedef FetchReposRef
    = AutoDisposeFutureProviderRef<Iterable<GithubRepositoryModel>>;

/// See also [fetchRepos].
@ProviderFor(fetchRepos)
const fetchReposProvider = FetchReposFamily();

/// See also [fetchRepos].
class FetchReposFamily
    extends Family<AsyncValue<Iterable<GithubRepositoryModel>>> {
  /// See also [fetchRepos].
  const FetchReposFamily();

  /// See also [fetchRepos].
  FetchReposProvider call({
    required int page,
    String query = '',
  }) {
    return FetchReposProvider(
      page: page,
      query: query,
    );
  }

  @override
  FetchReposProvider getProviderOverride(
    covariant FetchReposProvider provider,
  ) {
    return call(
      page: provider.page,
      query: provider.query,
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
  String? get name => r'fetchReposProvider';
}

/// See also [fetchRepos].
class FetchReposProvider
    extends AutoDisposeFutureProvider<Iterable<GithubRepositoryModel>> {
  /// See also [fetchRepos].
  FetchReposProvider({
    required this.page,
    this.query = '',
  }) : super.internal(
          (ref) => fetchRepos(
            ref,
            page: page,
            query: query,
          ),
          from: fetchReposProvider,
          name: r'fetchReposProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchReposHash,
          dependencies: FetchReposFamily._dependencies,
          allTransitiveDependencies:
              FetchReposFamily._allTransitiveDependencies,
        );

  final int page;
  final String query;

  @override
  bool operator ==(Object other) {
    return other is FetchReposProvider &&
        other.page == page &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
