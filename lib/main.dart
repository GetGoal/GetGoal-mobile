import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/app.dart';
import 'src/core/di.dart';
import 'src/core/env.dart';
import 'src/core/network.dart';
import 'src/shared/bloc_state.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  AppEnvironment.setupEnv(Environment.local);
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
