import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

// import 'package:dio/dio.dart';

// class NetworkManager {
//   final Dio dio;

//   const NetworkManager._(this.dio);

//   factory NetworkManager() {
//     final dio = Dio();

//     return NetworkManager._(dio);
//   }

//   Future<Response<T>> request<T>(
//     RequestMethod method,
//     String url, {
//     data,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//   }) {
//     return dio.request(
//       url,
//       data: data,
//       queryParameters: queryParameters,
//       options: Options(
//         method: method.value,
//         headers: headers,
//       ),
//     );
//   }
// }

// enum RequestMethod {
//   get,
//   head,
//   post,
//   put,
//   delete,
//   connect,
//   options,
//   trace,
//   patch,
// }

// extension RequestMethodX on RequestMethod {
//   String get value => getEnumValue(this).toUpperCase();
// }

// String getEnumValue(e) => e.toString().split('.').last;
