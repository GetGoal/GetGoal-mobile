import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/app.dart';
import 'src/core/di.dart';
import 'src/core/env.dart';
import 'src/core/network.dart';
import 'src/shared/bloc_state.dart';

void main() async {
  AppEnvironment.setupEnv(Environment.prod);
  await initializeDependencies();
  HttpOverrides.global = MyHttpOverrides();
  runApp(
    MultiBlocProvider(
      providers: [
        labelBloc,
      ],
      child: const GetGoalApp(),
    ),
  );
}
