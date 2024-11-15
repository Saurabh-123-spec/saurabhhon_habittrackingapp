import 'package:dio/dio.dart';
import 'package:saurabhhon_habbittracking_app/network/api_endpoints.dart';

class DioClient {
  Dio dio;

  DioClient() : dio = Dio(BaseOptions(
    baseUrl: ApiEndpoints.baseUrl,  // Set your API's base URL here
  ));

  Future<Response> get(String endpoint) async {
    try {
      final response = await dio.get(endpoint);
      return response;
    } on DioError catch (e) {
      // Handle error
      return Future.error(e.message as Object);
    }
  }

  Future<Response> post(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await dio.post(endpoint, data: data);
      return response;
    } on DioError catch (e) {
      return Future.error(e.message as Object);
    }
  }

}
