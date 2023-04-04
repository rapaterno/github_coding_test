import 'package:github_coding_test/data/model/github_repository_model.dart';
import 'package:github_coding_test/data/model/repository_details.dart';

abstract class GithubRepository {
  Future<RepositoryDetail> getRepository(
      {required String owner, required String repoName});

  Future<Iterable<GithubRepositoryModel>> searchRepositories(String query);
}
