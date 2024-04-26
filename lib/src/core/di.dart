import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../features/auth/data/repositories/auth_repository_impl.dart';
import '../features/auth/data/sources/api/auth_api_service.dart';
import '../features/auth/domain/repositories/auth_repository.dart';
import '../features/auth/domain/usecase/auth/create_account_usecase.dart';
import '../features/auth/domain/usecase/auth/get_category_preference_usecase.dart';
import '../features/auth/domain/usecase/auth/google_sign_in_usecase.dart';
import '../features/auth/domain/usecase/auth/login_usecase.dart';
import '../features/auth/domain/usecase/auth/logout_usecase.dart';
import '../features/auth/domain/usecase/auth/reset_password_usecase.dart';
import '../features/auth/domain/usecase/auth/verify_account_usecase.dart';
import '../features/auth/domain/usecase/auth/verify_password_reset_usecase.dart';
import '../features/auth/domain/usecase/auth/verify_token_usecase.dart';
import '../features/auth/presentation/screens/forget_password/bloc/forget_password/forget_password_bloc.dart';
import '../features/auth/presentation/screens/login/bloc/google_login/google_sign_in_bloc.dart';
import '../features/auth/presentation/screens/login/bloc/login/login_bloc.dart';
import '../features/auth/presentation/screens/new_password/bloc/new_password/new_password_bloc.dart';
import '../features/auth/presentation/screens/preference/bloc/preference_list/preference_list_bloc.dart';
import '../features/auth/presentation/screens/preference/bloc/update_user_label/update_user_label_bloc.dart';
import '../features/auth/presentation/screens/sign_up/bloc/create_account/create_account_bloc.dart';
import '../features/auth/presentation/screens/verification/bloc/verify_account/verify_account_bloc.dart';
import '../features/auth/presentation/screens/verification/bloc/verify_password_reset/verify_password_reset_bloc.dart';
import '../features/calendar/data/repositories/calendar_repository_impl.dart';
import '../features/calendar/data/sources/api/calendar_api_service.dart';
import '../features/calendar/domain/repositories/calendar_repository.dart';
import '../features/calendar/domain/usecases/get_avaliable_calendar_task_usecase.dart';
import '../features/calendar/presentation/blocs/calendar/calendar_bloc.dart';
import '../features/landing/presentation/bloc/main_page/main_page_bloc.dart';
import '../features/notification/presentation/bloc/notification/notification_bloc.dart';
import '../features/program/data/repositories/program_filter_repository_impl.dart';
import '../features/program/data/repositories/program_repository_impl.dart';
import '../features/program/data/sources/api/program_api_service.dart';
import '../features/program/data/sources/api/program_filter_api_service.dart';
import '../features/program/domain/repositories/program_filter_repository.dart';
import '../features/program/domain/repositories/program_repository.dart';
import '../features/program/domain/usecases/label/get_program_filter_usecase.dart';
import '../features/program/domain/usecases/program/create_program_usecase.dart';
import '../features/program/domain/usecases/program/delete_program_usecase.dart';
import '../features/program/domain/usecases/program/edit_program_by_id_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_id_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_label_name_usecase.dart';
import '../features/program/domain/usecases/program/get_program_by_search_usecase.dart';
import '../features/program/domain/usecases/program/get_program_statistics_usecase.dart';
import '../features/program/domain/usecases/program/get_program_usecase.dart';
import '../features/program/domain/usecases/program/get_recommend_program_usecase.dart';
import '../features/program/domain/usecases/program/save_program_usecase.dart';
import '../features/program/presentation/bloc/delete_program/delete_program_bloc.dart';
import '../features/program/presentation/bloc/filter_program/filter_program_bloc.dart';
import '../features/program/presentation/bloc/program/program_bloc.dart';
import '../features/program/presentation/bloc/program_category/program_category_bloc.dart';
import '../features/program/presentation/bloc/program_edit/program_edit_bloc.dart';
import '../features/program/presentation/bloc/program_info/program_info_bloc.dart';
import '../features/program/presentation/bloc/program_section/program_section_bloc.dart';
import '../features/program/presentation/bloc/program_statistics/program_statistics_bloc.dart';
import '../features/program/presentation/bloc/recommened_program/recommended_program_bloc.dart';
import '../features/program/presentation/screens/program_create/bloc/program_create/program_create_bloc.dart';
import '../features/setting/presentation/bloc/language/language_bloc.dart';
import '../features/splash/presentation/bloc/splash_page_bloc.dart';
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
import '../features/user/domain/usecases/get_user_join_program_usecase.dart';
import '../features/user/domain/usecases/get_user_profile_usecase.dart';
import '../features/user/domain/usecases/get_user_program_usecase.dart';
import '../features/user/domain/usecases/get_user_save_program_usecase.dart';
import '../features/user/domain/usecases/reset_user_password_usecase.dart';
import '../features/user/domain/usecases/update_user_label_usecase.dart';
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

  // Initialize API service for calendar feature
  getIt.registerLazySingleton<CalendarApiService>(
    () => CalendarApiService(getIt()),
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

  // Initialize repository for calendar feature
  getIt.registerLazySingleton<CalendarRepository>(
    () => CalendarRepositoryImpl(getIt()),
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
  getIt.registerLazySingleton(
    () => EditProgramByIdUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => DeleteProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => SaveProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetRecommendProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => VerifyTokenUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetProgramStatisticsUsecase(getIt()),
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
  getIt.registerLazySingleton(
    () => GoogleSignInUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => ResetPasswordUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => VerfifyPasswordResetUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetCategoryPreferenceUsecase(getIt()),
  );

  // Initialize usecase for user feature
  getIt.registerLazySingleton(
    () => GetUserProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetUserProfileUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => ResetUserPasswordUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetUserSaveProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => GetUserJoinProgramUsecase(getIt()),
  );
  getIt.registerLazySingleton(
    () => UpdateUserLabelUsecase(getIt()),
  );

  // Initialize usecase for calendar feature
  getIt.registerLazySingleton(
    () => GetAvaliableCalendarTaskUsecase(getIt()),
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
    () => ProgramBloc(getIt(), getIt(), getIt(), getIt(), getIt()),
  );
  getIt.registerFactory<ProgramInfoBloc>(
    () => ProgramInfoBloc(getIt()),
  );
  getIt.registerFactory<CreateProgramBloc>(
    () => CreateProgramBloc(getIt()),
  );
  getIt.registerFactory<ProgramEditBloc>(
    () => ProgramEditBloc(getIt(), getIt()),
  );
  getIt.registerFactory<DeleteProgramBloc>(
    () => DeleteProgramBloc(getIt()),
  );
  getIt.registerFactory<ProgramCategoryBloc>(
    () => ProgramCategoryBloc(),
  );
  getIt.registerFactory<ProgramStatisticsBloc>(
    () => ProgramStatisticsBloc(getIt()),
  );
  getIt.registerFactory<RecommendedProgramBloc>(
    () => RecommendedProgramBloc(getIt()),
  );
  getIt.registerFactory<ProgramSectionBloc>(
    () => ProgramSectionBloc(),
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
  getIt.registerLazySingleton<SplashPageBloc>(
    () => SplashPageBloc(getIt()),
  );
  getIt.registerLazySingleton<GoogleSignIn>(
    () => GoogleSignIn(),
  );
  getIt.registerFactory<CreateAccountBloc>(
    () => CreateAccountBloc(getIt()),
  );
  getIt.registerFactory<VerifyAccountBloc>(
    () => VerifyAccountBloc(getIt()),
  );
  getIt.registerFactory<VerifyPasswordResetBloc>(
    () => VerifyPasswordResetBloc(getIt()),
  );
  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(getIt()),
  );
  getIt.registerFactory<LogoutBloc>(
    () => LogoutBloc(getIt(), getIt()),
  );
  getIt.registerFactory<ForgetPasswordBloc>(
    () => ForgetPasswordBloc(getIt()),
  );
  getIt.registerFactory<NewPasswordBloc>(
    () => NewPasswordBloc(getIt()),
  );
  getIt.registerFactory<GoogleSignInBloc>(
    () => GoogleSignInBloc(getIt(), getIt(), getIt()),
  );
  getIt.registerFactory<PreferenceListBloc>(
    () => PreferenceListBloc(getIt()),
  );

  // Initialize Bloc for user feature
  getIt.registerFactory<UserProgramBloc>(
    () => UserProgramBloc(getIt(), getIt(), getIt()),
  );
  getIt.registerFactory<UserProfileBloc>(
    () => UserProfileBloc(getIt()),
  );
  getIt.registerFactory<UpdateUserLabelBloc>(
    () => UpdateUserLabelBloc(getIt()),
  );

  // Initialize Bloc for notification feature
  getIt.registerFactory<NotificationBloc>(
    () => NotificationBloc(),
  );

  // Initialize Bloc for calendar feature
  getIt.registerFactory<CalendarBloc>(
    () => CalendarBloc(getIt()),
  );
}
