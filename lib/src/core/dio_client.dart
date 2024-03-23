import 'package:dio/dio.dart';

import 'env.dart';
import 'secure_store.dart';

Dio buildClient() {
  final dio = Dio()..options = BaseOptions(baseUrl: AppEnvironment.baseApiUrl);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        // Add the access token to the request header
        options.headers['Authorization'] =
            'Bearer ${await SecureStorage().readSecureData('access_token')}';

        // Add the refresh token to the request header
        options.headers['RefreshToken'] =
            await SecureStorage().readSecureData('refresh_token');

        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        handler.reject(e);
      },
    ),
  );

  return dio;
}
