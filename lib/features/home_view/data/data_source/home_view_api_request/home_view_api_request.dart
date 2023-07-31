import 'package:dio/dio.dart';

class HomeViewApiRequest {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio dio;

  HomeViewApiRequest(this.dio);

  Future<Map<String, dynamic>> getBooksData({required String endPoint}) async {
    dio.options.baseUrl = _baseUrl;
    Response response = await dio.get(endPoint);
    return response.data;
  }
}
