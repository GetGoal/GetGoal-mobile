import '../../core/bases/base_data_response.dart';

extension RepositoryExceptionMapper on BaseDataResponse {
  BaseDataResponse returnResponse() => BaseDataResponse(
        code: code ?? 404,
        message: message ?? 'Error, Something went wrong.',
        count: count ?? 0,
        data: data,
        error: error ?? '',
      );
}

BaseDataResponse returnError(dynamic data) {
  return BaseDataResponse(
    code: data['code'],
    message: data['message'],
    count: data['count'],
    data: null,
    error: data['error'],
  );
}
