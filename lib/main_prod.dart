import 'dart:io';

import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/config/i18n/strings.g.dart';
import 'src/config/local_config.dart';
import 'src/core/di.dart';
import 'src/core/env.dart';
import 'src/core/network.dart';

void main() async {
  AppEnvironment.setupEnv(Environment.prod);
  await initializeDependencies();
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.setLocale(await LocaleConfig.getCurrentLocale());
  runApp(
    TranslationProvider(
      child: const GetGoalApp(),
    ),
  );
}
