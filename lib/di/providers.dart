import 'dart:io';

import 'package:dio/dio.dart';
import 'package:github_coding_test/data/provider/github/github_api_provider.dart';
import 'package:github_coding_test/data/repository/github/github_repo.dart';
import 'package:github_coding_test/data/repository/github/github_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Dio dio(DioRef ref) => Dio(BaseOptions(
      baseUrl: 'https://api.github.com',
    ))
      ..interceptors.add(
        InterceptorsWrapper(onRequest: (options, handler) {
          options.headers[HttpHeaders.authorizationHeader] =
              "bearer ${const String.fromEnvironment('GITHUB_KEY')}";

          handler.next(options);
        }),
      );

@riverpod
GithubApiProvider githubApiProvider(GithubApiProviderRef ref) =>
    GithubApiProvider(ref.read(dioProvider));

@riverpod
GithubRepository githubRepository(GithubRepositoryRef ref) =>
    GithubRepositoryImpl(
        githubApiProvider: ref.read(githubApiProviderProvider));
