import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RepoTile extends StatelessWidget {
  const RepoTile({
    super.key,
    required this.name,
    required this.owner,
    required this.avatarUrl,
    this.onTap,
  });

  final String name;
  final String owner;
  final String avatarUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(avatarUrl),
      ),
      onTap: onTap,
      title: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xff0175c2),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      subtitle: Text(owner),
    );
  }
}

class LoadingRepoTile extends StatelessWidget {
  const LoadingRepoTile({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final baseColor = colorScheme.onBackground.withOpacity(0.1);
    final highlightColor = colorScheme.onBackground.withOpacity(0.2);

    return ListTile(
      leading: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: const CircleAvatar(),
      ),
      title: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: Container(
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: colorScheme.background,
          ),
        ),
      ),
      subtitle: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: Container(
          height: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: colorScheme.background,
          ),
        ),
      ),
    );
  }
}
