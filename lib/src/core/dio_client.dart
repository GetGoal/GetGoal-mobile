import 'package:dio/dio.dart';

Future<String> refreshToken() async {
  return 'your_new_access_token';
}

Dio buildClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        // Add the access token to the request header
        options.headers['Authorization'] =
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImNob3Rpd2l0LnNvdXlhbkBtYWlsLmttdXR0LmFjLnRoIiwidXNlcl9pZCI6NywiZmlyc3RfbmFtZSI6IkNob3Rpd2l0IiwibGFzdF9uYW1lIjoiU291eWFuIiwiZXhwIjo0ODYxNzgwNDE4fQ.PoUJp91-dCCJewM2chrg6Iw54A8WVk32HIIF_wLto5c';
        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        // if (e.response?.statusCode == 401) {
        //   // If a 401 response is received, refresh the access token
        //   String newAccessToken = await refreshToken();

        //   // Update the request header with the new access token
        //   e.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';

        //   // Repeat the request with the updated header
        //   return handler.resolve(await dio.fetch(e.requestOptions));
        // }
        // return handler.next(e);
      },
    ),
  );

  // dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) {
  //     // Do something before request is sent
  //     options.headers["Authorization"] = "Bearer " + token;
  //     return options;
  //   }));
  // // dio.interceptors.addAll([
  // //   TokenInterceptor(),
  // //   DioLogInterceptor(),
  // //   LoggyDioInterceptor()
  // // ])

  return dio;
}
