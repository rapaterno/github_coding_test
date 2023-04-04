import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_coding_test/data/provider/github/github_api_provider.dart';
import 'package:github_coding_test/data/model/repository_details.dart';
import 'package:github_coding_test/data/model/github_repository_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'github_api_provider_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late GithubApiProvider provider;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    provider = GithubApiProvider(mockDio);
  });
  group('searchRepositories', () {
    const query = 'testQuery';
    final item = {
      'id': 1,
      'name': 'testRepo',
      'owner': {'login': 'testOwner', 'avatar_url': 'testUrl'},
      'language': 'Dart'
    };
    final mockResponse = {
      'total_count': 1,
      'incomplete_results': false,
      'items': [item]
    };

    final repositories = [GithubRepositoryModel.fromJson(item)];

    test('returns a list of GithubRepositoryModel objects', () async {
      when(mockDio.get(any, queryParameters: {'q': query})).thenAnswer(
        (_) async => Response(
          data: mockResponse,
          statusCode: 200,
          requestOptions: RequestOptions(),
        ),
      );

      final result = await provider.searchRepositories(query);

      expect(result, repositories);
    });

    test('throws an exception when response status code is not 200', () async {
      when(mockDio.get(any, queryParameters: {'q': query})).thenAnswer(
        (_) async => Response(
          data: mockResponse,
          statusCode: 400,
          requestOptions: RequestOptions(),
        ),
      );

      expect(() => provider.searchRepositories(query), throwsException);
    });
  });

  group('getRepository', () {
    const owner = 'testOwner';
    const repoName = 'testRepo';

    final mockResponse = {
      'id': 1,
      'name': 'testRepo',
      'owner': {'login': 'testOwner', 'avatar_url': 'testUrl'},
      'language': 'Dart',
      'watchers_count': 10,
      'forks_count': 5,
      'open_issues_count': 3,
      'stargazers_count': 15
    };

    final repository = RepositoryDetail.fromJson(mockResponse);

    test('returns a RepositoryDetail object', () async {
      when(mockDio.get(any)).thenAnswer(
        (_) async => Response(
          data: mockResponse,
          statusCode: 200,
          requestOptions: RequestOptions(),
        ),
      );

      final result =
          await provider.getRepository(owner: owner, repoName: repoName);

      expect(result, repository);
    });

    test('throws an exception when response status code is not 200', () async {
      when(mockDio.get(any)).thenAnswer(
        (_) async => Response(
          data: mockResponse,
          statusCode: 400,
          requestOptions: RequestOptions(),
        ),
      );

      expect(() => provider.getRepository(owner: owner, repoName: repoName),
          throwsException);
    });
  });
}
