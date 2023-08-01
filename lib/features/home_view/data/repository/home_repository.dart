import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home_view/data/data_source/home_view_api_request/home_view_api_request.dart';
import 'package:bookly/features/home_view/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}

class HomeRepository implements BaseHomeRepository {
  final HomeViewApiRequest homeViewApiRequest;

  HomeRepository(this.homeViewApiRequest);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await homeViewApiRequest.getBooksData(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming');
      return Right(data );
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await homeViewApiRequest.getBooksData(endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      return Right(data);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
