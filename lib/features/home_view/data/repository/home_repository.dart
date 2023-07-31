import 'package:bookly/features/home_view/data/models/book_model.dart';

abstract class HomeRepository{
  Future<List<BookModel>> fetchBestSellerBooks();
  Future<List<BookModel>> fetchFeaturedBooks();

}