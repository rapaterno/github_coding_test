import 'package:dio/dio.dart';
import 'package:github_coding_test/data/model/github_repository_model.dart';
import 'package:github_coding_test/data/model/github_search_schema.dart';
import 'package:github_coding_test/data/model/repository_details.dart';
import 'package:github_coding_test/data/provider/github/github_api_provider.dart';
import 'package:github_coding_test/data/provider/github/github_provider.dart';
import 'package:github_coding_test/data/repository/github/github_repo.dart';

class GithubRepositoryImpl implements GithubRepository {
  final GithubProvider _githubApiProvider;

  GithubRepositoryImpl({required GithubProvider githubApiProvider})
      : _githubApiProvider = githubApiProvider;

  @override
  Future<RepositoryDetail> getRepository(
      {required String owner, required String repoName}) async {
    return await _githubApiProvider.getRepository(
        owner: owner, repoName: repoName);
  }

  @override
  Future<Iterable<GithubRepositoryModel>> searchRepositories(
      String query) async {
    return await _githubApiProvider.searchRepositories(query);
  }
}
