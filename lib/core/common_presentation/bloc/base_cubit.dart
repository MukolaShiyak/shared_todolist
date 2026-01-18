import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_todolist/core/common_domain/entities/api_result_entity.dart';

class BaseCubit<State> extends Cubit<State> {
  BaseCubit(super.initialState);

  Future<ApiResultEntity<T>> execute<T>(
    Future<ApiResultEntity<T>> Function() request,
  ) async {
    final result = await request();
    if (result is ApiFailureEntity) {
      //TODO add error handling
    }

    return result;
  }
}
