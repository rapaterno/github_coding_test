import 'package:dio/dio.dart';
import 'package:github_coding_test/data/model/github_repository_model.dart';
import 'package:github_coding_test/data/model/github_search_schema.dart';
import 'package:github_coding_test/data/model/repository_details.dart';
import 'package:github_coding_test/data/provider/github/github_provider.dart';

class GithubApiProvider implements GithubProvider {
  final Dio dio;

  GithubApiProvider(this.dio);

  @override
  Future<RepositoryDetail> getRepository(
      {required String owner, required String repoName}) async {
    final response = await dio.get(
      '/repos/$owner/$repoName',
    );

    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      try {
        final repository = RepositoryDetail.fromJson(response.data);
        return repository;
      } catch (e) {
        throw Exception();
      }
    } else {
      throw Exception();
    }
  }

  @override
  Future<Iterable<GithubRepositoryModel>> searchRepositories(
      String query) async {
    final Map<String, dynamic> queryParams = {'q': query};
    final response = await dio.get(
      '/search/repositories',
      queryParameters: queryParams,
    );
    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      final githubSchema = GithubSearchSchema.fromJson(response.data);
      return githubSchema.items;
    } else {
      throw Exception();
    }
  }
}
