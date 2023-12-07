import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

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
import 'dio_client.dart';
import 'env.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = buildClient(AppEnvironment.baseApiUrl);

  //Dio
  getIt.registerSingleton<Dio>(Dio());

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
}
