import 'error_entity.dart';

class ApiResultEntity<T> {
  final T? data;
  final ErrorEntity? error;

  ApiResultEntity({this.data, this.error});
}

class ApiSuccessEntity<T> extends ApiResultEntity<T> {
  ApiSuccessEntity(T data) : super(data: data);
}

class ApiFailureEntity<T> extends ApiResultEntity<T> {
  ApiFailureEntity(ErrorEntity error) : super(error: error);
}
