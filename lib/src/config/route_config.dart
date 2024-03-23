import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../core/di.dart';
import '../features/auth/presentation/screens/forget_password/bloc/forget_password/forget_password_bloc.dart';
import '../features/auth/presentation/screens/forget_password/forget_password_page.dart';
import '../features/auth/presentation/screens/login/bloc/google_login/google_sign_in_bloc.dart';
import '../features/auth/presentation/screens/login/bloc/login/login_bloc.dart';
import '../features/auth/presentation/screens/login/login_page.dart';
import '../features/auth/presentation/screens/new_password/bloc/new_password/new_password_bloc.dart';
import '../features/auth/presentation/screens/new_password/new_password_page.dart';
import '../features/auth/presentation/screens/sign_up/bloc/create_account/create_account_bloc.dart';
import '../features/auth/presentation/screens/sign_up/sign_up_page.dart';
import '../features/auth/presentation/screens/verification/bloc/verify_account/verify_account_bloc.dart';
import '../features/auth/presentation/screens/verification/verification_page.dart';
import '../features/landing/presentation/bloc/main_page/main_page_bloc.dart';
import '../features/landing/presentation/screens/main/main_page.dart';
import '../features/program/presentation/bloc/delete_program/delete_program_bloc.dart';
import '../features/program/presentation/bloc/filter_program/filter_program_bloc.dart';
import '../features/program/presentation/bloc/program/program_bloc.dart';
import '../features/program/presentation/bloc/program_info/program_info_bloc.dart';
import '../features/program/presentation/enum/program_form_mode.enum.dart';
import '../features/program/presentation/screens/program_create/bloc/program_create/program_create_bloc.dart';
import '../features/program/presentation/screens/program_create/program_create_page.dart';
import '../features/program/presentation/screens/program_create/program_task_create.dart';
import '../features/program/presentation/screens/program_info/program_info_page.dart';
import '../features/setting/presentation/bloc/language/language_bloc.dart';
import '../features/setting/presentation/screens/setting/setting_page.dart';
import '../features/task/presentation/bloc/task_create/task_create_bloc.dart';
import '../features/task/presentation/bloc/task_detail/task_detail_bloc.dart';
import '../features/task/presentation/bloc/task_planning/task_planning_bloc.dart';
import '../features/task/presentation/screens/home/bloc/date_timeline/date_timeline_bloc.dart';
import '../features/task/presentation/screens/home/bloc/todo/todo_bloc.dart';
import '../features/task/presentation/screens/task_create/task_create_page.dart';
import '../features/task/presentation/screens/task_detail/task_detail_page.dart';
import '../features/task/presentation/screens/task_planning/task_planning_page.dart';
import '../features/user/presentation/screens/bloc/logout/logout_bloc.dart';
import '../features/user/presentation/screens/bloc/user_profile/user_profile_bloc.dart';
import '../features/user/presentation/screens/bloc/user_program/user_program_bloc.dart';
import '../features/user/presentation/screens/user_profile_page.dart';

class RouteConfig {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _goRouter = GoRouter(
    initialLocation: Routes.loginPage,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      _loginPage(),
      _signUpPage(),
      _verificationPage(),
      _mainPage(),
      _programInfoPage(),
      _userProfilePage(),
      _taskPlanningPage(),
      _settingPage(),
      _taskCreatePage(),
      _taskDetailPage(),
      _programCreatePage(),
      _programTaskCreate(),
      _forgetPasswordPage(),
      _newPasswordPage(),
    ],
  );

  static GoRouter get goRouter => _goRouter;

  static GoRoute _loginPage() {
    return GoRoute(
      path: Routes.loginPage,
      name: Routes.loginPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<LoginBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<GoogleSignInBloc>(),
          ),
        ],
        child: const LoginPage(),
      ),
    );
  }

  static GoRoute _signUpPage() {
    return GoRoute(
      path: Routes.signUpPage,
      name: Routes.signUpPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<CreateAccountBloc>(),
          ),
        ],
        child: const SignUpPage(),
      ),
    );
  }

  static GoRoute _verificationPage() {
    return GoRoute(
      path: Routes.verificationPage,
      name: Routes.verificationPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<VerifyAccountBloc>(),
          ),
        ],
        child: const VerificationPage(),
      ),
    );
  }

  static GoRoute _mainPage() {
    return GoRoute(
      name: Routes.mainPage,
      path: Routes.mainPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<MainPageBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<FilterProgramBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<ProgramBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<ProgramInfoBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<DateTimelineBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<TodoBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<UserProgramBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<LogoutBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<DeleteProgramBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<UserProfileBloc>(),
          ),
        ],
        child: const MainPage(),
      ),
    );
  }

  static GoRoute _programInfoPage() {
    return GoRoute(
      path: '${Routes.programInfomationPage}/:id',
      name: Routes.programInfomationPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ProgramInfoBloc>(),
          ),
        ],
        child: ProgramInfoPage(
          programId: state.pathParameters['id'],
        ),
      ),
    );
  }

  static GoRoute _userProfilePage() {
    return GoRoute(
      path: Routes.userProfilePage,
      name: Routes.userProfilePage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<UserProgramBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<LogoutBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<DeleteProgramBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<UserProfileBloc>(),
          ),
        ],
        child: const UserProfilePage(),
      ),
    );
  }

  static GoRoute _taskPlanningPage() {
    return GoRoute(
      path: '${Routes.taskPlanningPage}/:id',
      name: Routes.taskPlanningPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<TaskPlanningBloc>(),
          ),
        ],
        child: TaskPlanningPage(
          programId: state.pathParameters['id'],
        ),
      ),
    );
  }

  static GoRoute _settingPage() {
    return GoRoute(
      path: Routes.settingPage,
      name: Routes.settingPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<LanguageBloc>(),
          ),
        ],
        child: const SettingPage(),
      ),
    );
  }

  static GoRoute _taskCreatePage() {
    return GoRoute(
      path: Routes.taskCreatepage,
      name: Routes.taskCreatepage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<TaskCreateBloc>(),
          ),
        ],
        child: TaskCreatePage(
          pageData: state.extra as TaskCreatePageData,
        ),
      ),
    );
  }

  static GoRoute _taskDetailPage() {
    return GoRoute(
      path: '${Routes.taskDetailPage}/:id',
      name: Routes.taskDetailPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<TaskDetailBloc>(),
          ),
        ],
        child: TaskDetailPage(
          taskId: state.pathParameters['id'],
        ),
      ),
    );
  }

  static GoRoute _programCreatePage() {
    return GoRoute(
      path: Routes.programCreatePage,
      name: Routes.programCreatePage,
      builder: (context, state) => ProgramCreatePage(
        mode: state.extra as PROGRAMFORMMODE,
      ),
    );
  }

  static GoRoute _programTaskCreate() {
    return GoRoute(
      path: Routes.programTaskCreatePage,
      name: Routes.programTaskCreatePage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<CreateProgramBloc>(),
          ),
        ],
        child: const ProgramTaskCreate(),
      ),
    );
  }

  static GoRoute _forgetPasswordPage() {
    return GoRoute(
      path: Routes.forgetPasswordPage,
      name: Routes.forgetPasswordPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ForgetPasswordBloc>(),
          ),
        ],
        child: const ForgetPasswordPage(),
      ),
    );
  }

  static GoRoute _newPasswordPage() {
    return GoRoute(
      path: Routes.newPasswordPage,
      name: Routes.newPasswordPage,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<NewPasswordBloc>(),
          ),
        ],
        child: const NewPasswordPage(),
      ),
    );
  }
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
  static const String forgetPasswordPage = '/forget_password';
  static const String newPasswordPage = '/new_password';
}
