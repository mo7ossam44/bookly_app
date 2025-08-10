//! Api Wrapper for whole projects
import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = 'https://api.nytimes.com/svc/books/v3/';
  final apiKey = 'Oj6YZC8qSincGvPG5xlcmPM4FMELC4oB';
  final dio = Dio();

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
