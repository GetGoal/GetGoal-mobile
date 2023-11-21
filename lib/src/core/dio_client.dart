import 'package:dio/dio.dart';

Dio buildClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);

  // dio.interceptors.addAll([
  //   TokenInterceptor(),
  //   DioLogInterceptor(),
  //   LoggyDioInterceptor()
  // ])

  return dio;
}
