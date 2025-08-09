import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/core/utils/widgets/sliver_hight.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/sliver_list_builder.dart';
import 'package:bookly/features/home/presentation/manger/get_books_cubit/get_book_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/list_view_builder_horizontal.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetBookCubit(),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SliverHight(hight: 20),
                ListViewBuilderHorizontaly(),
                SliverHight(hight: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text('Best Seller', style: Styles.textStyle25),
                ),
                SliverListBuilder(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
