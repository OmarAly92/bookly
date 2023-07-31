import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with Api Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with Api Server');

      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Server was canceled');

      case DioExceptionType.badCertificate:
        return ServerFailure('There was bad certificate');

      case DioExceptionType.connectionError:
        return ServerFailure('There was connection error, Try again later!');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try again later!');
    } else {
      return ServerFailure('Opps there was an Error, Please try again!');
    }
  }
}
