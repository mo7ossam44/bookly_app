import 'package:bookly/features/home/data/models/book_model.dart';

abstract class GetFeaturedBooksStates {}

class FeaturedBookLoaded extends GetFeaturedBooksStates {
  final List<BookModel> books;

  FeaturedBookLoaded(this.books);
}

class FeaturedBookLoading extends GetFeaturedBooksStates {}

class FeaturedBookFaliure extends GetFeaturedBooksStates {
  final String errMessag;

  FeaturedBookFaliure({required this.errMessag});
}
