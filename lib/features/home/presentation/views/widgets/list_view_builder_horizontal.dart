import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';

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
          itemBuilder: (context, index) => const CustomListViewItem(),
        ),
      ),
    );
  }
}

