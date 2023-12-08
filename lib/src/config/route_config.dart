import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../features/home/presentation/screens/main/main_page.dart';
import '../features/program/presentation/screens/program_info/program_info_page.dart';
import '../features/task/domain/models/task.dart';
import '../features/task/presentation/screens/task_planning/task_planning_page.dart';
import '../shared/bloc_state.dart';

class RouteConfig {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _goRouter = GoRouter(
    initialLocation: Routes.mainPage,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: Routes.mainPage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            filterProgramBloc,
            programBloc,
            programInfoBloc,
          ],
          child: const MainPage(),
        ),
      ),
      GoRoute(
        path: '${Routes.programInfomationPage}/:id',
        name: Routes.programInfomationPage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            programInfoBloc,
          ],
          child: ProgramInfoPage(
            programId: state.pathParameters['id'],
          ),
        ),
      ),
      GoRoute(
        path: Routes.taskPlanningPage,
        name: Routes.taskPlanningPage,
        builder: (context, state) => TaskPlanningPage(
          tasks: state.extra as List<Task>,
        ),
      ),
    ],
  );

  static GoRouter get goRouter => _goRouter;
}

class Routes {
  static const String mainPage = '/main';
  static const String programPage = '/program';
  static const String programInfomationPage = '/program_info';
  static const String taskPlanningPage = '/task_planning';
}
