import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../features/auth/data/repositories/auth_repository_impl.dart';
import '../features/auth/data/sources/api/auth_api_service.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/auth/domain/usecase/auth/create_account_usecase.dart';
import '../features/auth/domain/usecase/auth/login_usecase.dart';
import '../features/auth/domain/usecase/auth/logout_usecase.dart';
import '../features/auth/domain/usecase/auth/verify_account_usecase.dart';
import '../features/auth/presentation/screens/login/bloc/login/login_bloc.dart';
import '../features/auth/presentation/screens/sign_up/bloc/create_account/create_account_bloc.dart';
import '../features/auth/presentation/screens/verification/bloc/verify_account/verify_account_bloc.dart';
import '../features/landing/presentation/bloc/main_page/main_page_bloc.dart';
import '../features/program/data/repositories/program_filter_repository_impl.dart';
import '../features/program/data/repositories/program_repository_impl.dart';
import '../features/program/data/sources/api/program_api_service.dart';
import '../features/program/data/sources/api/program_filter_api_service.dart';
import '../features/program/domain/repositories/program_filter_repository.dart';
import '../features/program/domain/repositories/program_repository.dart';
import '../features/program/domain/usecases/label/get_program_filter_usecase.dart';
import '../features/program/domain/usecases/program/create_program_usecase.dart';
import '../features/program/domain/usecases/program/delete_program_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_id_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_label_name_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_search_usecase.dart';
import '../features/program/domain/usecases/program/get_program_usecase.dart';
import '../features/program/presentation/bloc/delete_program/delete_program_bloc.dart';
import '../features/program/presentation/bloc/filter_program/filter_program_bloc.dart';

import '../features/program/presentation/bloc/program/program_bloc.dart';
import '../features/program/presentation/bloc/program_info/program_info_bloc.dart';
import '../features/program/presentation/screens/program_create/bloc/program_create/program_create_bloc.dart';
import '../features/setting/presentation/bloc/language/language_bloc.dart';
import '../features/task/data/repositories/task_repository_impl.dart';
import '../features/task/data/sources/api/task_api_service.dart';
import '../features/task/domain/repositories/task_repository.dart';
import '../features/task/domain/usecases/task/change_task_status_to_done_usecase.dart';
import '../features/task/domain/usecases/task/change_task_status_to_not_done_usecase.dart';
import '../features/task/domain/usecases/task/create_task_usecase.dart';
import '../features/task/domain/usecases/task/delete_task_usecase.dart';
import '../features/task/domain/usecases/task/get_task_by_program_id.dart';
import '../features/task/domain/usecases/task/get_task_by_task_Id_usecase.dart';
import '../features/task/domain/usecases/task/get_task_by_user_usecase.dart';
import '../features/task/domain/usecases/task/join_program_usecase.dart';
import '../features/task/domain/usecases/task/update_task_usecase.dart';
import '../features/task/presentation/bloc/task_create/task_create_bloc.dart';
import '../features/task/presentation/bloc/task_detail/task_detail_bloc.dart';
import '../features/task/presentation/bloc/task_planning/task_planning_bloc.dart';
import '../features/task/presentation/screens/home/bloc/date_timeline/date_timeline_bloc.dart';
import '../features/task/presentation/screens/home/bloc/todo/todo_bloc.dart';
import '../features/user/data/repositories/user_repository_impl.dart';
import '../features/user/data/sources/api/user_api_service.dart';
import '../features/user/domain/repositories/user_repository.dart';
import '../features/user/domain/usecases/get_user_program_usecase.dart';
import '../features/user/presentation/screens/bloc/logout/logout_bloc.dart';
import '../features/user/presentation/screens/bloc/user_program/user_program_bloc.dart';
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
  getIt.registerLazySingleton(() => GetProgramBySearchUsecase(getIt()));
  getIt.registerLazySingleton(() => CreateProgramUsecase(getIt()));

  getIt.registerFactory<ProgramBloc>(
    () => ProgramBloc(getIt(), getIt(), getIt()),
  );

  getIt.registerLazySingleton(() => GetProgramByIdUsecase(getIt()));
  getIt.registerFactory<ProgramInfoBloc>(() => ProgramInfoBloc(getIt()));

  getIt.registerFactory<DeleteProgramBloc>(() => DeleteProgramBloc(getIt()));
  getIt.registerLazySingleton(() => DeleteProgramUsecase(getIt()));

  getIt.registerFactory<CreateProgramBloc>(() => CreateProgramBloc(getIt()));

  //to-do feature
  getIt.registerLazySingleton<TaskApiService>(() => TaskApiService(dio));
  getIt.registerLazySingleton<TaskRepository>(
    () => TaskRepositoryImpl(getIt()),
  );
  getIt.registerFactory<DateTimelineBloc>(() => DateTimelineBloc());
  getIt.registerFactory<TodoBloc>(() => TodoBloc(getIt(), getIt(), getIt()));
  getIt.registerFactory<TaskPlanningBloc>(
    () => TaskPlanningBloc(getIt(), getIt()),
  );
  getIt.registerFactory<TaskCreateBloc>(
    () => TaskCreateBloc(
      getIt(),
      getIt(),
      getIt(),
    ),
  );
  getIt.registerFactory<TaskDetailBloc>(() => TaskDetailBloc(getIt(), getIt()));

  getIt.registerLazySingleton(() => GetTaskByUserUsecase(getIt()));
  getIt.registerLazySingleton(() => GetTaskByProgramIdUsecase(getIt()));
  getIt.registerLazySingleton(() => JoinProgramUsecase(getIt()));
  getIt.registerLazySingleton(() => ChangeTaskStatusToDoneUsecase(getIt()));
  getIt.registerLazySingleton(() => ChangeTaskStatusToNotDoneUsecase(getIt()));
  getIt.registerLazySingleton(() => CreateTaskUsecase(getIt()));
  getIt.registerLazySingleton(() => DeleteTaskUsecase(getIt()));
  getIt.registerLazySingleton(() => GetTaskByTaskIdUsecase(getIt()));
  getIt.registerLazySingleton(() => UpdateTaskUsecase(getIt()));

  getIt.registerFactory<LanguageBloc>(
    () => LanguageBloc(),
  );

  getIt.registerFactory<CreateAccountBloc>(() => CreateAccountBloc(getIt()));
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(AuthApiService(dio)),
  );
  getIt.registerLazySingleton(() => CreateAccountUsecase(getIt()));

  getIt.registerFactory<VerifyAccountBloc>(() => VerifyAccountBloc(getIt()));

  getIt.registerLazySingleton(() => VerfifyAccountUsecase(getIt()));

  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt()));
  getIt.registerFactory<LogoutBloc>(() => LogoutBloc(getIt()));
  getIt.registerLazySingleton(() => LoginUsecase(getIt()));
  getIt.registerLazySingleton(() => LogoutUsecase(getIt()));

  // User feature
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(UserApiService(dio)),
  );
  getIt.registerFactory<UserProgramBloc>(() => UserProgramBloc(getIt()));
  getIt.registerLazySingleton(() => GetUserProgramUsecase(getIt()));
}
