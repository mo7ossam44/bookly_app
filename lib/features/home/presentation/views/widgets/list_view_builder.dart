import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/presentation/manger/get_featured_books_cubit/get_featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manger/get_featured_books_cubit/get_featured_books_states.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_verticaly_item.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetFeaturedBooksCubit>(context).getFeaturedBooksCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFeaturedBooksCubit, GetFeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBookLoading) {
          return Center(child: CircularProgressIndicator(color: Colors.white));
        } else if (state is FeaturedBookLoaded) {
          return Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) =>
                  CustomListViewItemVerticaly(bookModel: state.books[index]),
            ),
          );
        } else if (state is FeaturedBookFaliure) {
          return Text(state.errMessag);
        } else {
          return Text(
            'No Avalible Books Now , try Later',
            style: TextStyle(color: Colors.white),
          );
        }
      },
    );
  }
}
