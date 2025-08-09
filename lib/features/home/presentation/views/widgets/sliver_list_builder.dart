import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/manger/get_books_cubit/get_book_cubit.dart';
import 'package:bookly/features/home/presentation/manger/get_books_cubit/get_book_state.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_verticaly_item.dart';

class SliverListBuilder extends StatefulWidget {
  const SliverListBuilder({super.key});

  @override
  State<SliverListBuilder> createState() => _SliverListBuilderState();
}

class _SliverListBuilderState extends State<SliverListBuilder> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetBookCubit>(context).getAllBooksCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBookCubit, GetBookState>(
      builder: (context, state) {
        if (state is GetBookStateLoading) {
          return Center(child: CircularProgressIndicator(color: Colors.white));
        } else if (state is GetBookStateSucess) {
          List<BookModel> booksList =
              BlocProvider.of<GetBookCubit>(context).booksListCubit ?? [];
          return Expanded(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: booksList.length,
                itemBuilder: (context, index) =>
                    CustomListViewItemVerticaly(bookModel: booksList[index]),
              ),
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
