import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/di.dart';

import '../features/auth/presentation/screens/login/bloc/login/login_bloc.dart';
import '../features/auth/presentation/screens/sign_up/bloc/create_account/create_account_bloc.dart';
import '../features/auth/presentation/screens/verification/bloc/verify_account/verify_account_bloc.dart';
import '../features/landing/presentation/bloc/main_page/main_page_bloc.dart';
import '../features/program/presentation/bloc/delete_program/delete_program_bloc.dart';
import '../features/program/presentation/bloc/filter_program/filter_program_bloc.dart';
import '../features/program/presentation/bloc/program/program_bloc.dart';
import '../features/program/presentation/bloc/program_info/program_info_bloc.dart';
import '../features/program/presentation/screens/program_create/bloc/program_create/program_create_bloc.dart';
import '../features/task/presentation/bloc/task_create/task_create_bloc.dart';
import '../features/task/presentation/bloc/task_detail/task_detail_bloc.dart';
import '../features/task/presentation/bloc/task_planning/task_planning_bloc.dart';
import '../features/task/presentation/screens/home/bloc/date_timeline/date_timeline_bloc.dart';
import '../features/task/presentation/screens/home/bloc/todo/todo_bloc.dart';
import '../features/user/presentation/screens/bloc/logout/logout_bloc.dart';
import '../features/user/presentation/screens/bloc/user_profile/user_profile_bloc.dart';
import '../features/user/presentation/screens/bloc/user_program/user_program_bloc.dart';

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

final taskPlanningBloc = BlocProvider(
  create: ((context) => getIt<TaskPlanningBloc>()),
);

final dateTimelineBloc = BlocProvider(
  create: ((context) => getIt<DateTimelineBloc>()),
);

final todoBloc = BlocProvider(
  create: ((context) => getIt<TodoBloc>()),
);

final taskDetailBloc = BlocProvider(
  create: ((context) => getIt<TaskDetailBloc>()),
);

final taskCreateBloc = BlocProvider(
  create: (context) => getIt<TaskCreateBloc>(),
);

final createAccountBloc = BlocProvider(
  create: (context) => getIt<CreateAccountBloc>(),
);

final verifyAccountBloc = BlocProvider(
  create: (context) => getIt<VerifyAccountBloc>(),
);

final loginBloc = BlocProvider(
  create: (context) => getIt<LoginBloc>(),
);

final logoutBloc = BlocProvider(
  create: (context) => getIt<LogoutBloc>(),
);

final userProgramBloc = BlocProvider(
  create: (context) => getIt<UserProgramBloc>(),
);

final deleteProgramBloc = BlocProvider(
  create: (context) => getIt<DeleteProgramBloc>(),
);

final createProgramBloc = BlocProvider(
  create: (context) => getIt<CreateProgramBloc>(),
);

final userProfileBloc = BlocProvider(
  create: (context) => getIt<UserProfileBloc>(),
);
