import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/core/utils/widgets/sliver_hight.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/list_view_builder.dart';
import 'package:bookly/features/home/presentation/views/widgets/list_view_builder_horizontal.dart';
import 'package:bookly/features/home/presentation/manger/get_newest_books_cubit/get_newest_book_cubit.dart';
import 'package:bookly/features/home/presentation/manger/get_featured_books_cubit/get_featured_books_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SliverHight(hight: 20),
              BlocProvider(
                create: (context) =>
                    GetNewestBookCubit(getIt.get<HomeRepoImpl>())
                      ..getNewestBooksCubit(),
                child: ListViewBuilderHorizontaly(),
              ),
              SliverHight(hight: 40),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text('Best Seller', style: Styles.textStyle25),
              ),
              BlocProvider(
                create: (context) =>
                    GetFeaturedBooksCubit(getIt.get<HomeRepoImpl>())
                      ..getFeaturedBooksCubit(),
                child: ListViewBuilder(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
