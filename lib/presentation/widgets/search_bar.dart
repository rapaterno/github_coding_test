import 'package:flutter/material.dart';
import 'package:github_coding_test/l10n/generated/app_localization.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, this.controller});

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SizedBox(
      height: 70,
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              decoration: const BoxDecoration(
                color: Color(0xff35404d),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Center(
                        child: TextField(
                          controller: controller,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                            isDense: true,
                            hintText: l10n.searchPackages,
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                          ),
                          onEditingComplete: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
