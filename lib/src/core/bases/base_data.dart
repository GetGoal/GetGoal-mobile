import 'package:dio/dio.dart';

abstract class DataState<T> {
  const DataState({this.data, this.error});

  final T? data;
  final DioException? error;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}

// abstract class DataState2<T> {
//   const DataState2({
//     this.code,
//     this.message,
//     this.count,
//     this.data,
//     this.error,
//   });

//   final int? code;
//   final String? message;
//   final int? count;
//   final T? data;
//   final String? error;
// }

// class DataSuccess2<T> extends DataState2<T> {
//   const DataSuccess2(T data) : super(data: data);
// }

// class DataFailed2<T> extends DataState2<T> {
//   const DataFailed2(DioException error) : super(error: DioException(message: error));
// }
