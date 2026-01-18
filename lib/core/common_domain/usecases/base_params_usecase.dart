import 'package:shared_todolist/core/common_domain/entities/api_result_entity.dart';

abstract class BaseParamsUseCase<T, R> {
  Future<ApiResultEntity<T>> call(R request);
}
