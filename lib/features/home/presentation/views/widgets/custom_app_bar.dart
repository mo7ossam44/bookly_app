import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

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
              onPressed: () {},
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
