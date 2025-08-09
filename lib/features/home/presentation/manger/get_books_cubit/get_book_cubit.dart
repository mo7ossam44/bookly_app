import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/service/books_service.dart';
import 'package:bookly/features/home/presentation/manger/get_books_cubit/get_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetBookCubit extends Cubit<GetBookState> {
  GetBookCubit() : super(GetBookStateLoading());

  List<BookModel>? booksListCubit;

  Future getAllBooksCubit() async {
    try {
      emit(GetBookStateLoading());
      booksListCubit = await BooksService().getBooks();
      emit(GetBookStateSucess());
    } catch (e) {
      emit(GetBookStateFaliure());
    }
  }
}
