import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/app.dart';
import 'src/core/di.dart';
import 'src/core/env.dart';
import 'src/core/network.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  AppEnvironment.setupEnv(Environment.local);
  await initializeDependencies();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const GetGoalApp());
}
