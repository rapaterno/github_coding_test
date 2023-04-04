import 'github_repository_model.dart';

class GithubSearchSchema {
  final int totalCount;
  final bool incompleteResults;
  final Iterable<GithubRepositoryModel> items;

  GithubSearchSchema({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });

  factory GithubSearchSchema.fromJson(Map<String, dynamic> json) {
    final itemsJson = json['items'] as Iterable<dynamic>;
    final items =
        itemsJson.map((e) => GithubRepositoryModel.fromJson(e)).toList();
    return GithubSearchSchema(
      totalCount: json['total_count'] as int,
      incompleteResults: json['incomplete_results'] as bool,
      items: items,
    );
  }
}
