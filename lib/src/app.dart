import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/screens/main/main_page.dart';
import 'shared/bloc_state.dart';
import 'shared/themes/theme.dart';

class GetGoalApp extends StatelessWidget {
  const GetGoalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetGoal!',
      theme: appTheme(context),
      home: MultiBlocProvider(
        providers: [
          filterProgramBloc,
          programBloc,
        ],
        child: const MainPage(),
      ),
    );
  }
}
