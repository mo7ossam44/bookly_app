import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/manger/get_books_cubit/get_book_cubit.dart';
import 'package:bookly/features/home/presentation/manger/get_books_cubit/get_book_state.dart';
import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    BlocProvider.of<GetBookCubit>(context).getAllBooksCubit();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<GetBookCubit, GetBookState>(
      builder: (context, state) {
        if (state is GetBookStateLoading) {
          return Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        } else if (state is GetBookStateSucess) {
          List<BookModel> booksList =
              BlocProvider.of<GetBookCubit>(context).booksListCubit ?? [];
          return SizedBox(
            height: height * 0.3,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: booksList.length,
              itemBuilder: (context, index) =>
                  CustomListViewItem(bookModel: booksList[index]),
            ),
          );
        } else if (state is GetBookStateFaliure) {
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
