import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home_view/data/data_source/home_view_api_request/home_view_api_request.dart';
import 'package:bookly/features/home_view/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchNewBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}

class HomeRepository implements BaseHomeRepository {
  final HomeViewApiRequest homeViewApiRequest;

  HomeRepository(this.homeViewApiRequest);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewBooks() async {
    try {
      var data = await homeViewApiRequest.getBooksData(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming');

      return Right(data);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
