import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/sliver_hight.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/sliver_list_builder.dart';
import 'package:bookly/features/home/presentation/views/widgets/list_view_builder_horizontal.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: CustomScrollView(
        slivers: [
          CustomAppBar(),
          SliverHight(hight: 20),
          ListViewBuilderHorizontaly(),
          SliverHight(hight: 5),
          SliverListBuilder(),
        ],
      ),
    );
  }
}
