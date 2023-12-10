import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di.dart';

import '../features/landing/presentation/bloc/main_page/main_page_bloc.dart';
import '../features/program/presentation/bloc/filter_program/filter_program_bloc.dart';
import '../features/program/presentation/bloc/program/program_bloc.dart';
import '../features/program/presentation/bloc/program_info/program_info_bloc.dart';
import '../features/task/presentation/screens/home/bloc/date_timeline/date_timeline_bloc.dart';
import '../features/task/presentation/screens/home/bloc/todo/todo_bloc.dart';

final mainPageBloc = BlocProvider(
  create: (context) => getIt<MainPageBloc>(),
);

final filterProgramBloc = BlocProvider(
  create: (context) => getIt<FilterProgramBloc>(),
);

final programBloc = BlocProvider(create: ((context) => getIt<ProgramBloc>()));

final programInfoBloc = BlocProvider(
  create: ((context) => getIt<ProgramInfoBloc>()),
);

final dateTimelineBloc = BlocProvider(
  create: ((context) => getIt<DateTimelineBloc>()),
);

final todoBloc = BlocProvider(
  create: ((context) => getIt<TodoBloc>()),
);
