import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewBuilderHorizontaly extends StatelessWidget {
  const ListViewBuilderHorizontaly({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 280,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Image.asset(AssetsData.bookPhoto),
        ),
      ),
    );
  }
}
