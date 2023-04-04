import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_details.freezed.dart';

@freezed
class RepositoryDetail with _$RepositoryDetail {
  const factory RepositoryDetail({
    required int id,
    required String name,
    required String owner,
    required String avatarUrl,
    required int numOfWatchers,
    required int numOfStars,
    required int numOfForks,
    required int numOfIssues,
    required String language,
  }) = _RepositoryDetail;

  factory RepositoryDetail.fromJson(Map<String, dynamic> json) {
    final owner = json['owner'] as Map<String, dynamic>;
    return RepositoryDetail(
      id: json['id'] as int,
      name: json['name'] as String,
      owner: owner['login'] as String,
      avatarUrl: owner['avatar_url'] as String,
      language: json['language'] as String,
      numOfWatchers: json['watchers_count'] as int,
      numOfForks: json['forks_count'] as int,
      numOfIssues: json['open_issues_count'] as int,
      numOfStars: json['stargazers_count'] as int,
    );
  }
}
