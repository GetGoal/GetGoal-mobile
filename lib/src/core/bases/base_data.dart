import 'base_data_response.dart';

abstract class DataState<T> {
  const DataState({this.data, this.error});

  final T? data;
  final BaseDataResponse? error;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(BaseDataResponse error) : super(error: error);
}
