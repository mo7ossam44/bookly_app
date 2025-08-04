import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_sliver_list_item.dart';

class SliverListBuilder extends StatelessWidget {
  const SliverListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      sliver: SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) => CustomSliverListItem(),
      ),
    );
  }
}
