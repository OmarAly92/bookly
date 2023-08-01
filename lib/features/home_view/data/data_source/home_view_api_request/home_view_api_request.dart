import 'package:bookly/features/home_view/data/models/book_model.dart';
import 'package:dio/dio.dart';

class HomeViewApiRequest {
  final Dio _dio;

  HomeViewApiRequest(this._dio) {
    _dio.options.baseUrl = 'https://www.googleapis.com/books/v1/';
  }

  Future<List<BookModel>> getBooksData({required String endPoint}) async {
    Response response = await _dio.get(endPoint);
    return List<BookModel>.from(
        (response.data['items'] as List).map((e) => BookModel.fromJson(e)));
  }
}
