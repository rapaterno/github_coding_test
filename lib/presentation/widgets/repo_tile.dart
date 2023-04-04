import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
