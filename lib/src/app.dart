import 'package:flutter/material.dart';

import 'features/home/presentation/screens/main/main_page.dart';
import 'shared/themes/theme.dart';

class GetGoalApp extends StatelessWidget {
  const GetGoalApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetGoal!',
      theme: appTheme(context),
      home: const MainPage(),
    );
  }
}
