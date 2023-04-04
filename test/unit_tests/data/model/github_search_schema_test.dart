import 'package:flutter_test/flutter_test.dart';
import 'package:github_coding_test/data/model/github_search_schema.dart';

void main() {
  group(GithubSearchSchema, () {
    test('fromJson should return a valid instance of GithubSearchSchema', () {
      final json = {
        "total_count": 1,
        "incomplete_results": false,
        "items": [
          {
            "id": 123,
            "name": "test_repo",
            "owner": {
              "login": "test_user",
              "avatar_url": "https://test.com/avatar.png"
            }
          }
        ]
      };
      final searchResult = GithubSearchSchema.fromJson(json);

      expect(searchResult.totalCount, 1);
      expect(searchResult.incompleteResults, false);
      expect(searchResult.items, isNotEmpty);
      expect(searchResult.items.length, 1);

      final repository = searchResult.items.first;
      expect(repository.id, 123);
      expect(repository.name, "test_repo");
      expect(repository.owner, "test_user");
      expect(repository.avatarUrl, "https://test.com/avatar.png");
    });
  });
}
