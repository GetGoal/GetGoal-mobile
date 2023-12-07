import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di.dart';

import '../features/program/presentation/bloc/filter_program/filter_program_bloc.dart';
import '../features/program/presentation/bloc/program/program_bloc.dart';
import '../features/program/presentation/bloc/program_info/program_info_bloc.dart';

final filterProgramBloc = BlocProvider(
  create: (context) => getIt<FilterProgramBloc>(),
);

final programBloc = BlocProvider(create: ((context) => getIt<ProgramBloc>()));

final programInfoBloc = BlocProvider(
  create: ((context) => getIt<ProgramInfoBloc>()),
);
