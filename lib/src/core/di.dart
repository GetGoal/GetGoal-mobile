import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../features/auth/data/repositories/auth_repository_impl.dart';
import '../features/auth/data/sources/api/auth_api_service.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/auth/domain/usecase/auth/create_account_usecase.dart';
import '../features/auth/domain/usecase/auth/login_usecase.dart';
import '../features/auth/domain/usecase/auth/logout_usecase.dart';
import '../features/auth/domain/usecase/auth/verify_account_usecase.dart';
import '../features/auth/presentation/screens/forget_password/bloc/forget_password/forget_password_bloc.dart';
import '../features/auth/presentation/screens/login/bloc/login/login_bloc.dart';
import '../features/auth/presentation/screens/new_password/bloc/new_password/new_password_bloc.dart';
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
import '../features/program/domain/usecases/program/get_program_by_id_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_label_name_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_search_usecase.dart';
import '../features/program/domain/usecases/program/get_program_usecase.dart';
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
import '../features/task/domain/usecases/task/get_task_by_task_id_usecase.dart';
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
import '../features/user/domain/usecases/get_user_profile_usecase.dart';
import '../features/user/domain/usecases/get_user_program_usecase.dart';
import '../features/user/presentation/screens/bloc/logout/logout_bloc.dart';
import '../features/user/presentation/screens/bloc/user_profile/user_profile_bloc.dart';
import '../features/user/presentation/screens/bloc/user_program/user_program_bloc.dart';
import 'dio_client.dart';

final getIt = GetIt.instance;

Future<void> initServiceLocator() async {
  final dio = buildClient();

  // Register Dio
  getIt.registerSingleton<Dio>(dio);

  // Initialize API services
  await _initApiService();

  // Initialize repositories
  await _initRepositories();

  // Initialize use case
  await _initUsecases();

  // Initialize Bloc
  await _initBlocs();
}

Future<void> _initApiService() async {
  // Initialize API service for program feature
  getIt.registerLazySingleton<ProgramFilterApiService>(
    () => ProgramFilterApiService(getIt()),
  );
  getIt.registerLazySingleton<ProgramApiService>(
    () => ProgramApiService(getIt()),
  );

  // Initialize API service for task feature
  getIt.registerLazySingleton<TaskApiService>(
    () => TaskApiService(getIt()),
  );

  // Initialize API service for authentication feature
  getIt.registerLazySingleton<AuthApiService>(
    () => AuthApiService(getIt()),
  );

  // Initialize API service for user feature
  getIt.registerLazySingleton<UserApiService>(
    () => UserApiService(getIt()),
  );
}

Future<void> _initRepositories() async {
  // Initialize repository for program feature
  getIt.registerLazySingleton<ProgramFilterRepository>(
    () => ProgramFilterRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<ProgramRepository>(
    () => ProgramRepositoryImpl(getIt()),
  );

  // Initialize repository for task feature
  getIt.registerLazySingleton<TaskRepository>(
    () => TaskRepositoryImpl(getIt()),
  );

  // Initialize repository for authentication feature
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt()),
  );

  // Initialize repository for user feature
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(getIt()),
  );
}

Future<void> _initUsecases() async {
  // Initialize for program feature
  getIt.registerLazySingleton<GetProgramFilterUsecase>(
    () => GetProgramFilterUsecase(getIt()),
  );
  getIt.registerLazySingleton<GetProgramUsecase>(
    () => GetProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetProgramByLabelNameUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetProgramBySearchUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => CreateProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetProgramByIdUsecase(getIt()),
  );

// Initialize for task feature
  getIt.registerLazySingleton(
    () => GetTaskByUserUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetTaskByProgramIdUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => JoinProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => ChangeTaskStatusToDoneUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => ChangeTaskStatusToNotDoneUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => CreateTaskUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => DeleteTaskUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetTaskByTaskIdUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => UpdateTaskUsecase(getIt()),
  );

  // Initialize usecase for authentication feature
  getIt.registerLazySingleton(
    () => CreateAccountUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => VerfifyAccountUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => LoginUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => LogoutUsecase(getIt()),
  );

  // Initialize usecase for user feature
  getIt.registerLazySingleton(
    () => GetUserProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetUserProfileUsecase(getIt()),
  );
}

Future<void> _initBlocs() async {
  // Initialize Bloc for main page
  getIt.registerFactory<MainPageBloc>(
    () => MainPageBloc(),
  );

  // Initialize Bloc for program feature
  getIt.registerFactory<FilterProgramBloc>(
    () => FilterProgramBloc(getIt()),
  );
  getIt.registerFactory<ProgramBloc>(
    () => ProgramBloc(getIt(), getIt(), getIt()),
  );
  getIt.registerFactory<ProgramInfoBloc>(
    () => ProgramInfoBloc(getIt()),
  );
  getIt.registerFactory<CreateProgramBloc>(
    () => CreateProgramBloc(getIt()),
  );

  // Initialize Bloc for task feature
  getIt.registerFactory<DateTimelineBloc>(
    () => DateTimelineBloc(),
  );
  getIt.registerFactory<TodoBloc>(
    () => TodoBloc(getIt(), getIt(), getIt()),
  );
  getIt.registerFactory<TaskPlanningBloc>(
    () => TaskPlanningBloc(getIt(), getIt()),
  );
  getIt.registerFactory<TaskCreateBloc>(
    () => TaskCreateBloc(getIt(), getIt(), getIt()),
  );
  getIt.registerFactory<TaskDetailBloc>(
    () => TaskDetailBloc(getIt(), getIt()),
  );

  // Initialize Bloc for setting feature
  getIt.registerFactory<LanguageBloc>(
    () => LanguageBloc(),
  );

  // Initialize Bloc for authentication feature
  getIt.registerFactory<CreateAccountBloc>(
    () => CreateAccountBloc(getIt()),
  );
  getIt.registerFactory<VerifyAccountBloc>(
    () => VerifyAccountBloc(getIt()),
  );
  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(getIt()),
  );
  getIt.registerFactory<LogoutBloc>(
    () => LogoutBloc(getIt()),
  );
  getIt.registerFactory<ForgetPasswordBloc>(
    () => ForgetPasswordBloc(),
  );
  getIt.registerFactory<NewPasswordBloc>(
    () => NewPasswordBloc(),
  );

  // Initialize Bloc for user feature
  getIt.registerFactory<UserProgramBloc>(
    () => UserProgramBloc(getIt()),
  );
  getIt.registerFactory<UserProfileBloc>(
    () => UserProfileBloc(getIt()),
  );
}
