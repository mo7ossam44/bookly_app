import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/sliver_hight.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/sliver_list_builder.dart';
import 'package:bookly/features/home/presentation/views/widgets/list_view_builder_horizontal.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        CustomAppBar(),
        SliverHight(hight: 20),
        ListViewBuilderHorizontaly(h: 280),
        SliverHight(hight: 40),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Best Seller', style: Styles.textStyle25),
          ),
        ),
        SliverListBuilder(),
      ],
    );
  }
}
