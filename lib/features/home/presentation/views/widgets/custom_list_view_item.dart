import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 180,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AssetsData.bookPhoto)),
      ),
    );
  }
}
