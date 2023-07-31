import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home_view/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}

class HomeRepository implements BaseHomeRepository {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
