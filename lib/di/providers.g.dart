// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'a44d045e9b64f7ce3501484c8285a19d139a73a2';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$githubApiProviderHash() => r'232f109c3adf5bd22316a5a46b34eaffad58c20e';

/// See also [githubApiProvider].
@ProviderFor(githubApiProvider)
final githubApiProviderProvider =
    AutoDisposeProvider<GithubApiProvider>.internal(
  githubApiProvider,
  name: r'githubApiProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$githubApiProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GithubApiProviderRef = AutoDisposeProviderRef<GithubApiProvider>;
String _$githubRepositoryHash() => r'52c28485c620e2a5ce3d4bc918afc77dc1c80178';

/// See also [githubRepository].
@ProviderFor(githubRepository)
final githubRepositoryProvider = AutoDisposeProvider<GithubRepository>.internal(
  githubRepository,
  name: r'githubRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$githubRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GithubRepositoryRef = AutoDisposeProviderRef<GithubRepository>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
