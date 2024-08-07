import 'dart:io';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timezone/data/latest_all.dart' as tz;

import 'src/config/firebase/prod/firebase_options.dart';
import 'src/config/i18n/strings.g.dart';
import 'src/config/local_config.dart';
import 'src/config/notification/notification_service.dart';
import 'src/core/di.dart';
import 'src/core/env.dart';
import 'src/core/network.dart';
import 'src/get_goal_app.dart';

void main() async {
  AppEnvironment.setupEnv(Environment.prod);
  await initServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  tz.initializeTimeZones();

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
