import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:github_coding_test/data/model/github_repository_model.dart';
import 'package:github_coding_test/di/providers.dart';
import 'package:github_coding_test/l10n/generated/app_localization.dart';
import 'package:github_coding_test/presentation/screens/repo_details_page.dart';
import 'package:github_coding_test/presentation/widgets/repo_tile.dart';
import 'package:github_coding_test/presentation/widgets/search_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_page.g.dart';

@riverpod
Future<Iterable<GithubRepositoryModel>> fetchRepos(
  FetchReposRef ref, {
  required int page,
  String query = '',
}) async {
  if (query.isEmpty) {
    return Future.value([]);
  }

  await Future<void>.delayed(const Duration(milliseconds: 250));
  return await ref.watch(githubRepositoryProvider).searchRepositories(query);
}

class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    final searchController = useTextEditingController();
    useListenable(searchController);

    final packageList = ref.watch(
      fetchReposProvider(
        page: 1,
        query: searchController.text,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.searchPackages),
      ),
      body: Column(
        children: [
          SearchBar(controller: searchController),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () {
                // Remove previously fetched repositories
                ref.invalidate(fetchReposProvider);

                return ref.read(
                  fetchReposProvider(page: 1, query: searchController.text)
                      .future,
                );
              },
              child: packageList.when(
                  data: ((data) {
                    if (searchController.text.isEmpty && data.isEmpty) {
                      return Center(
                        child: Text(l10n.whatAreYouLookingFor),
                      );
                    } else if (data.isEmpty) {
                      return Center(
                        child: Text(l10n.noResultsFound),
                      );
                    }

                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) => RepoTile(
                        name: data.elementAt(index).name,
                        owner: data.elementAt(index).owner,
                        avatarUrl: data.elementAt(index).avatarUrl,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) {
                              return RepoDetailsPage(
                                owner: data.elementAt(index).owner,
                                repoName: data.elementAt(index).name,
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  }),
                  error: (_, __) =>
                      Text(l10n.thereHasBeenAnErrorPullDownToRefresh),
                  loading: () => const Center(
                        child: CircularProgressIndicator(),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
