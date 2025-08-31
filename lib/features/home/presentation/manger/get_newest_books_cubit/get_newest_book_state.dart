import 'package:bookly/features/home/data/models/book_model.dart';

abstract class GetNewestBookState {}

class GetNewestBookStateLoaded extends GetNewestBookState {
  final List<BookModel> books;

  GetNewestBookStateLoaded(this.books);
}

class GetNewestBookStateLoading extends GetNewestBookState {}

class GetNewestBookStateFaliure extends GetNewestBookState {
  final String errMessage;
  GetNewestBookStateFaliure(this.errMessage);
}
