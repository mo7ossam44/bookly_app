import 'package:bookly/core/api/api_service.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBox() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=intitle:sports&sorting=newest&orderby=relevence',
      ); 
      List<BookModel> booksListModel = [];
      for (var book in data['items']) {
        BookModel bookModel = BookModel.fromJson(book);
        booksListModel.add(bookModel);
      }
      return right(booksListModel);
    } catch (e) {
      return left(ServerFaliure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBox() {
    throw UnimplementedError();
  }
}
