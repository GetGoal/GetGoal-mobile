import 'package:flutter/material.dart';

import 'config/route_config.dart';
import 'shared/themes/theme.dart';

class GetGoalApp extends StatelessWidget {
  const GetGoalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GetGoal!',
      theme: appTheme(context),
      routeInformationProvider: RouteConfig.goRouter.routeInformationProvider,
      routeInformationParser: RouteConfig.goRouter.routeInformationParser,
      routerDelegate: RouteConfig.goRouter.routerDelegate,
    );
  }
}
