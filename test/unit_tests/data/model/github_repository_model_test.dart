import 'package:flutter_test/flutter_test.dart';
import 'package:github_coding_test/data/model/github_repository_model.dart';

void main() {
  group(GithubRepositoryModel, () {
    test('fromJson should return a valid instance of GithubRepositoryModel',
        () {
      final json = {
        "id": 123,
        "name": "test_repo",
        "owner": {
          "login": "test_user",
          "avatar_url": "https://test.com/avatar.png"
        }
      };
      final repository = GithubRepositoryModel.fromJson(json);
      expect(repository.id, 123);
      expect(repository.name, "test_repo");
      expect(repository.owner, "test_user");
      expect(repository.avatarUrl, "https://test.com/avatar.png");
    });
  });
}
