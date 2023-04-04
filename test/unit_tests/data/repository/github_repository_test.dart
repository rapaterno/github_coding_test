import 'package:github_coding_test/data/model/github_repository_model.dart';
import 'package:github_coding_test/data/model/repository_details.dart';
import 'package:github_coding_test/data/provider/github/github_provider.dart';
import 'package:github_coding_test/data/repository/github/github_repo_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

import 'github_repository_test.mocks.dart';

@GenerateMocks([GithubProvider])
void main() {
  group('GithubRepositoryImpl', () {
    late GithubRepositoryImpl repository;
    late MockGithubProvider mockProvider;

    setUp(() {
      mockProvider = MockGithubProvider();
      repository = GithubRepositoryImpl(githubApiProvider: mockProvider);
    });

    test('should return a repository detail', () async {
      // Arrange
      const owner = 'octocat';
      const repoName = 'Hello-World';
      const expectedRepositoryDetail = RepositoryDetail(
        id: 1296269,
        name: 'Hello-World',
        owner: 'octocat',
        avatarUrl: 'https://avatars.githubusercontent.com/u/583231?v=4',
        numOfWatchers: 1630,
        numOfStars: 1630,
        numOfForks: 1242,
        numOfIssues: 394,
        language: 'JavaScript',
      );
      when(mockProvider.getRepository(owner: owner, repoName: repoName))
          .thenAnswer((_) async => expectedRepositoryDetail);

      // Act
      final result = await repository.getRepository(
        owner: owner,
        repoName: repoName,
      );

      // Assert
      verify(mockProvider.getRepository(owner: owner, repoName: repoName));
      expect(result, equals(expectedRepositoryDetail));
    });

    test('should return a list of GithubRepositoryModel', () async {
      // Arrange
      const query = 'flutter';
      const expectedRepositories = [
        GithubRepositoryModel(
          id: 128107138,
          name: 'flutter',
          owner: 'flutter',
          avatarUrl: 'https://avatars.githubusercontent.com/u/14101776?v=4',
        ),
        GithubRepositoryModel(
          id: 288994042,
          name: 'flutter-go',
          owner: 'alibaba',
          avatarUrl: 'https://avatars.githubusercontent.com/u/1961952?v=4',
        ),
        GithubRepositoryModel(
          id: 318514615,
          name: 'flutter_learn',
          owner: 'ryanhe725',
          avatarUrl: 'https://avatars.githubusercontent.com/u/13131005?v=4',
        ),
      ];
      when(mockProvider.searchRepositories(query))
          .thenAnswer((_) async => expectedRepositories);

      // Act
      final result = await repository.searchRepositories(query);

      // Assert
      verify(mockProvider.searchRepositories(query));
      expect(result, equals(expectedRepositories));
    });
  });
}
