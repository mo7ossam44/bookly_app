import 'package:dartz/dartz.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure , List<BookModel>>> fetchBestSellerBox();
  Future<Either<Failure , List<BookModel>>> fetchFeaturedBox();
}
