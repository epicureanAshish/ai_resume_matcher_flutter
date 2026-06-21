import 'package:dio/dio.dart';

import '../../app/constants/app_constants.dart';

class ApiClient {
  late final Dio dio;

  ApiClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout:
        const Duration(seconds: 30),
        receiveTimeout:
        const Duration(seconds: 30),
      ),
    );
  }
}