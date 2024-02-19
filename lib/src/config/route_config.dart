import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/presentation/screens/login/login_page.dart';
import '../features/auth/presentation/screens/sign_up/sign_up_page.dart';
import '../features/auth/presentation/screens/verification/verification_page.dart';
import '../features/landing/presentation/screens/main/main_page.dart';
import '../features/program/domain/models/program_create.dart';
import '../features/program/presentation/enum/program_form_mode.enum.dart';
import '../features/program/presentation/screens/program_create/program_create_page.dart';
import '../features/program/presentation/screens/program_create/program_task_create.dart';
import '../features/program/presentation/screens/program_info/program_info_page.dart';
import '../features/setting/presentation/screens/setting/setting_page.dart';
import '../features/setting/presentation/states/setting_state.dart';
import '../features/task/domain/models/task.dart';
import '../features/task/presentation/enum/task_form_mode_enum.dart';
import '../features/task/presentation/screens/task_create/task_create_page.dart';
import '../features/task/presentation/screens/task_detail/task_detail_page.dart';
import '../features/task/presentation/screens/task_planning/task_planning_page.dart';
import '../features/user/presentation/screens/user_profile_page.dart';
import '../shared/bloc_state.dart';
import '../test/test_page.dart';

class RouteConfig {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _goRouter = GoRouter(
    initialLocation: Routes.loginPage,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: Routes.loginPage,
        name: Routes.loginPage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            loginBloc,
          ],
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        path: Routes.signUpPage,
        name: Routes.signUpPage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            createAccountBloc,
          ],
          child: const SignUpPage(),
        ),
      ),
      GoRoute(
        path: Routes.verificationPage,
        name: Routes.verificationPage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            verifyAccountBloc,
          ],
          child: const VerificationPage(),
        ),
      ),
      GoRoute(
        name: Routes.mainPage,
        path: Routes.mainPage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            mainPageBloc,
            filterProgramBloc,
            programBloc,
            programInfoBloc,
            dateTimelineBloc,
            todoBloc,
            userProgramBloc,
            logoutBloc,
            deleteProgramBloc,
            userProfileBloc,
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
        path: Routes.userProfilePage,
        name: Routes.userProfilePage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            userProgramBloc,
            logoutBloc,
            deleteProgramBloc,
            userProfileBloc,
          ],
          child: const UserProfilePage(),
        ),
      ),
      GoRoute(
        path: '${Routes.taskPlanningPage}/:id',
        name: Routes.taskPlanningPage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            taskPlanningBloc,
          ],
          child: TaskPlanningPage(
            programId: state.pathParameters['id'],
          ),
        ),
      ),
      GoRoute(
        path: Routes.settingPage,
        name: Routes.settingPage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            languageBloc,
          ],
          child: const SettingPage(),
        ),
      ),
      GoRoute(
        path: Routes.taskCreatepage,
        name: Routes.taskCreatepage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            taskCreateBloc,
          ],
          child: TaskCreatePage(
            pageData: state.extra as TaskCreatePageData,
          ),
        ),
      ),
      GoRoute(
        path: '${Routes.taskDetailPage}/:id',
        name: Routes.taskDetailPage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            taskDetailBloc,
          ],
          child: TaskDetailPage(
            taskId: state.pathParameters['id'],
          ),
        ),
        // builder: (context, state) => const TaskDetailPage(),
      ),
      GoRoute(
        path: Routes.programCreatePage,
        name: Routes.programCreatePage,
        builder: (context, state) => ProgramCreatePage(
          mode: state.extra as PROGRAMFORMMODE,
        ),
      ),
      GoRoute(
        path: Routes.programTaskCreatePage,
        name: Routes.programTaskCreatePage,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            createProgramBloc,
          ],
          child: const ProgramTaskCreate(),
        ),
      ),
      GoRoute(
        path: '/test',
        name: 'test',
        builder: (context, state) => const TestPage(),
      ),
    ],
  );

  static GoRouter get goRouter => _goRouter;
}

class Routes {
  const Routes._();

  static const String loginPage = '/login';
  static const String signUpPage = '/sign_up';
  static const String verificationPage = '/verification';
  static const String mainPage = '/main';
  static const String programPage = '/program';
  static const String programInfomationPage = '/program_info';
  static const String programCreatePage = '/program/create';
  static const String programTaskCreatePage = '/program/create/task';
  static const String taskPlanningPage = '/task_planning';
  static const String taskCreatepage = '/task/create';
  static const String taskDetailPage = '/task/detail';
  static const String settingPage = '/setting';
  static const String userProfilePage = '/user/profile';
}
