import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AssetsData.logo, height: 20),
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: Image.asset(
                AssetsData.search,
                width: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

