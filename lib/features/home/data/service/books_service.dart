import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:dio/dio.dart';

class BooksService {
  final dio = Dio();

  String apiKey = 'Oj6YZC8qSincGvPG5xlcmPM4FMELC4oB';
  String baseUrl = 'https://api.nytimes.com/svc/books/v3/';

  Future<List<BookModel>> getBooks() async {
    Response response = await dio.get(
      '${baseUrl}lists/current/hardcover-fiction.json?api-key=$apiKey',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> books = jsonData['results']['books'];
    List<BookModel> booksListModel = [];
    for (var book in books) {
      BookModel bookModel = BookModel.fromJson(book);
      booksListModel.add(bookModel);
    }
    return booksListModel;
  }
}
