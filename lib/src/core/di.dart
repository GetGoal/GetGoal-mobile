import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../features/landing/presentation/bloc/main_page/main_page_bloc.dart';
import '../features/program/data/repositories/program_filter_repository_impl.dart';
import '../features/program/data/repositories/program_repository_impl.dart';
import '../features/program/data/sources/api/program_api_service.dart';
import '../features/program/data/sources/api/program_filter_api_service.dart';
import '../features/program/domain/repositories/program_filter_repository.dart';
import '../features/program/domain/repositories/program_repository.dart';
import '../features/program/domain/usecases/label/get_program_filter_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_id_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_label_name_usecase.dart';
import '../features/program/domain/usecases/program/get_program_usecase.dart';
import '../features/program/presentation/bloc/filter_program/filter_program_bloc.dart';

import '../features/program/presentation/bloc/program/program_bloc.dart';
import '../features/program/presentation/bloc/program_info/program_info_bloc.dart';
import '../features/task/data/repositories/task_repository_impl.dart';
import '../features/task/data/sources/api/task_api_service.dart';
import '../features/task/domain/repositories/task_repository.dart';
import '../features/task/domain/usecases/task/get_task_by_program_id.dart';
import '../features/task/domain/usecases/task/get_task_by_user_usecase.dart';
import '../features/task/domain/usecases/task/join_program_usecase.dart';
import '../features/task/presentation/bloc/task_planning/task_planning_bloc.dart';
import '../features/task/presentation/screens/home/bloc/date_timeline/date_timeline_bloc.dart';
import '../features/task/presentation/screens/home/bloc/todo/todo_bloc.dart';
import 'dio_client.dart';
import 'env.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = buildClient(AppEnvironment.baseApiUrl);

  //Dio
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerFactory<MainPageBloc>(
    () => MainPageBloc(),
  );

  //Program feature
  getIt.registerLazySingleton<ProgramFilterApiService>(
    () => ProgramFilterApiService(dio),
  );
  getIt.registerLazySingleton<ProgramFilterRepository>(
    () => ProgramFilterRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<GetProgramFilterUsecase>(
    () => GetProgramFilterUsecase(getIt()),
  );
  getIt.registerFactory<FilterProgramBloc>(
    () => FilterProgramBloc(getIt()),
  );

  getIt.registerLazySingleton<ProgramApiService>(() => ProgramApiService(dio));
  getIt.registerLazySingleton<ProgramRepository>(
    () => ProgramRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<GetProgramUsecase>(
    () => GetProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(() => GetProgramByLabelNameUsecase(getIt()));
  getIt.registerFactory<ProgramBloc>(() => ProgramBloc(getIt(), getIt()));

  getIt.registerLazySingleton(() => GetProgramByIdUsecase(getIt()));
  getIt.registerFactory<ProgramInfoBloc>(() => ProgramInfoBloc(getIt()));

  //to-do feature
  getIt.registerLazySingleton<TaskApiService>(() => TaskApiService(dio));
  getIt.registerLazySingleton<TaskRepository>(
    () => TaskRepositoryImpl(getIt()),
  );
  getIt.registerFactory<DateTimelineBloc>(() => DateTimelineBloc());
  getIt.registerFactory<TodoBloc>(() => TodoBloc(getIt()));
  getIt.registerFactory<TaskPlanningBloc>(
    () => TaskPlanningBloc(getIt(), getIt()),
  );

  getIt.registerLazySingleton(() => GetTaskByUserUsecase(getIt()));
  getIt.registerLazySingleton(() => GetTaskByProgramIdUsecase(getIt()));
  getIt.registerLazySingleton(() => JoinProgramUsecase(getIt()));
}
