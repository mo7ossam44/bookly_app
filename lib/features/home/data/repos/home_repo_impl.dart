import 'package:bookly/core/api/api_service.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBox() async {
    try {
      var data = await apiService.get(
        endPoint: 'lists/current/hardcover-fiction.json?',
      );
      List<BookModel> booksListModel = [];
      for (var book in data['books']) {
        BookModel bookModel = BookModel.fromJson(book);
        booksListModel.add(bookModel);
      }
      return right(booksListModel);
    } catch (e) {
      return left(ServerFaliure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBox() {
    // TODO: implement fetchFeaturedBox
    throw UnimplementedError();
  }
}
