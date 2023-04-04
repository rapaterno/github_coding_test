import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_coding_test/data/model/repository_details.dart';
import 'package:github_coding_test/di/providers.dart';
import 'package:github_coding_test/l10n/generated/app_localization.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo_details_page.g.dart';

@riverpod
Future<RepositoryDetail> fetchRepoDetail(FetchRepoDetailRef ref,
    {required String repoName, required String owner}) async {
  return await ref
      .watch(githubRepositoryProvider)
      .getRepository(owner: owner, repoName: repoName);
}

class RepoDetailsPage extends ConsumerWidget {
  const RepoDetailsPage(
      {super.key, required this.repoName, required this.owner});

  final String repoName;
  final String owner;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    final repoDetail = ref.watch(
      fetchRepoDetailProvider(repoName: repoName, owner: owner),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(repoName),
      ),
      body: RefreshIndicator(
        onRefresh: () {
          ref.invalidate(fetchRepoDetailProvider);

          return ref.read(
              fetchRepoDetailProvider(repoName: repoName, owner: owner).future);
        },
        child: repoDetail.when(
            data: (details) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              CachedNetworkImageProvider(details.avatarUrl),
                          radius: 20.0,
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                details.name,
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                              const SizedBox(height: 8.0),
                              Text(details.language),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  const Icon(Icons.star, size: 16.0),
                                  const SizedBox(width: 4.0),
                                  Text(details.numOfStars.toString()),
                                  const SizedBox(width: 16.0),
                                  const Icon(Icons.visibility, size: 16.0),
                                  const SizedBox(width: 4.0),
                                  Text(details.numOfWatchers.toString()),
                                  const SizedBox(width: 16.0),
                                  const Icon(Icons.call_split, size: 16.0),
                                  const SizedBox(width: 4.0),
                                  Text(details.numOfForks.toString()),
                                  const SizedBox(width: 16.0),
                                  const Icon(Icons.warning, size: 16.0),
                                  const SizedBox(width: 4.0),
                                  Text(details.numOfIssues.toString()),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            error: ((error, stackTrace) => Center(
                  child: Text(l10n.thereHasBeenAnErrorPullDownToRefresh),
                )),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )),
      ),
    );
  }
}
