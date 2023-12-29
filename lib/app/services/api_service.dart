import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> getProducts() async {
    return _dio.get('https://dummyjson.com/products');
  }
}
