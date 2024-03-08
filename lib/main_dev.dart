import 'dart:io';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/config/firebase/dev/firebase_options.dart';
import 'src/config/i18n/strings.g.dart';
import 'src/config/local_config.dart';
import 'src/core/di.dart';
import 'src/core/env.dart';
import 'src/core/network.dart';
import 'src/get_goal_app.dart';

void main() async {
  AppEnvironment.setupEnv(Environment.dev);
  await initServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();

  // START: Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.debug,
  );
  // END: Initialize Firebase

  HttpOverrides.global = MyHttpOverrides();
  LocaleSettings.setLocale(await LocaleConfig.getCurrentLocale());
  runApp(
    TranslationProvider(
      child: const GetGoalApp(),
    ),
  );
}
