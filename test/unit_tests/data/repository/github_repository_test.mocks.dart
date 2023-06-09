// Mocks generated by Mockito 5.4.0 from annotations
// in github_coding_test/test/unit_tests/data/repository/github_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:github_coding_test/data/model/github_repository_model.dart'
    as _i5;
import 'package:github_coding_test/data/model/repository_details.dart' as _i2;
import 'package:github_coding_test/data/provider/github/github_provider.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRepositoryDetail_0 extends _i1.SmartFake
    implements _i2.RepositoryDetail {
  _FakeRepositoryDetail_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GithubProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockGithubProvider extends _i1.Mock implements _i3.GithubProvider {
  MockGithubProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.RepositoryDetail> getRepository({
    required String? owner,
    required String? repoName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRepository,
          [],
          {
            #owner: owner,
            #repoName: repoName,
          },
        ),
        returnValue:
            _i4.Future<_i2.RepositoryDetail>.value(_FakeRepositoryDetail_0(
          this,
          Invocation.method(
            #getRepository,
            [],
            {
              #owner: owner,
              #repoName: repoName,
            },
          ),
        )),
      ) as _i4.Future<_i2.RepositoryDetail>);
  @override
  _i4.Future<Iterable<_i5.GithubRepositoryModel>> searchRepositories(
          String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchRepositories,
          [query],
        ),
        returnValue: _i4.Future<Iterable<_i5.GithubRepositoryModel>>.value(
            <_i5.GithubRepositoryModel>[]),
      ) as _i4.Future<Iterable<_i5.GithubRepositoryModel>>);
}
