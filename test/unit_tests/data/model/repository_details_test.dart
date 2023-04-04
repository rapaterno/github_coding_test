import 'package:flutter_test/flutter_test.dart';
import 'package:github_coding_test/data/model/repository_details.dart';

void main() {
  group(RepositoryDetail, () {
    test('fromJson should return a valid instance of RepositoryDetail', () {
      final json = {
        "id": 123,
        "name": "test_repo",
        "owner": {
          "login": "test_user",
          "avatar_url": "https://test.com/avatar.png"
        },
        "watcher_count": 10,
        "stargazers_count": 50,
        "forks_count": 20,
        "open_issues_count": 5,
        "language": "Dart"
      };
      final repository = RepositoryDetail.fromJson(json);
      expect(repository.id, 123);
      expect(repository.name, "test_repo");
      expect(repository.owner, "test_user");
      expect(repository.avatarUrl, "https://test.com/avatar.png");
      expect(repository.numOfWatchers, 10);
      expect(repository.numOfStars, 50);
      expect(repository.numOfForks, 20);
      expect(repository.numOfIssues, 5);
      expect(repository.language, "Dart");
    });
  });
}
