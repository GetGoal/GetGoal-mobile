import 'package:dio/dio.dart';

import 'secure_store.dart';

Future<String> refreshToken() async {
  return 'your_new_access_token';
}

Dio buildClient(String baseUrl) {
  final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        // Add the access token to the request header
        options.headers['Authorization'] =
            'Bearer ${await SecureStorage().readSecureData('access_token')}';
        options.headers['RefreshToken'] =
            await SecureStorage().readSecureData('refresh_token');
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
        handler.reject(e);
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
