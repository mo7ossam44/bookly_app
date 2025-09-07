import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessag;

  Failure(this.errMessag);
}

class ServerFaliure extends Failure {
  ServerFaliure(super.errMessag);

  factory ServerFaliure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFaliure('Connection time out with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFaliure('Send time out with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFaliure('recive time out with Api Server');
      case DioExceptionType.badCertificate:
        throw UnimplementedError();
      case DioExceptionType.badResponse:
        return ServerFaliure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data!,
        );
      case DioExceptionType.cancel:
        return ServerFaliure('request was cancelled');
      case DioExceptionType.connectionError:
        return ServerFaliure('No Internet Connection');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFaliure('No Internet Connection');
        }
        return ServerFaliure('Unexpected error');
    }
  }
  factory ServerFaliure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFaliure(response['erroe']['message']);
    } else if (statusCode == 404) {
      return ServerFaliure('please try again later');
    } else if (statusCode == 500) {
      return ServerFaliure('internal server error ,please try again later');
    } else {
      return ServerFaliure('Opps there was an error , Please try again later');
    }
  }
}
