import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly/features/home/presentation/manger/get_newest_books_cubit/get_newest_book_cubit.dart';
import 'package:bookly/features/home/presentation/manger/get_newest_books_cubit/get_newest_book_state.dart';

class ListViewBuilderHorizontaly extends StatefulWidget {
  const ListViewBuilderHorizontaly({super.key});

  @override
  State<ListViewBuilderHorizontaly> createState() =>
      _ListViewBuilderHorizontalyState();
}

class _ListViewBuilderHorizontalyState
    extends State<ListViewBuilderHorizontaly> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetNewestBookCubit>(context).getNewestBooksCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewestBookCubit, GetNewestBookState>(
      builder: (context, state) {
        if (state is GetNewestBookStateLoading) {
          return Center(child: CircularProgressIndicator(color: Colors.white));
        } else if (state is GetNewestBookStateLoaded) {
          var height = MediaQuery.of(context).size.height;
          return SizedBox(
            height: height * 0.3,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) =>
                  CustomListViewItem(bookModel: state.books[index]),
            ),
          );
        } else if (state is GetNewestBookStateFaliure) {
          return Text(state.errMessage);
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
