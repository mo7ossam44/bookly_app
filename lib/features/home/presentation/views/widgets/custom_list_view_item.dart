import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage(AssetsData.bookPhoto)),
        ),
      ),
    );
  }
}
