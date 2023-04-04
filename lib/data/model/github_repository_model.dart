import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repository_model.freezed.dart';

@freezed
class GithubRepositoryModel with _$GithubRepositoryModel {
  const factory GithubRepositoryModel({
    required int id,
    required String name,
    required String owner,
    required String avatarUrl,
  }) = _GithubRepositoryModel;

  factory GithubRepositoryModel.fromJson(Map<String, dynamic> json) {
    return GithubRepositoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      owner: json['owner']['login'] as String,
      avatarUrl: json['owner']['avatar_url'] as String,
    );
  }
}
