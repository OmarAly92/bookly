import 'package:bookly/features/home_view/data/models/book_model.dart';
import 'package:dio/dio.dart';

class HomeViewApiRequest {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio _dio;

  HomeViewApiRequest(this._dio);

  Future<List<BookModel>> getBooksData({required String endPoint}) async {
    _dio.options.baseUrl = _baseUrl;
    Response response = await _dio.get(endPoint);
    return List<BookModel>.from((response.data['items'] as List).map((e) => BookModel.fromJson(e)));
  }
}
