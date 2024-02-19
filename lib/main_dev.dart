import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/config/firebase/dev/firebase_options.dart';
import 'src/config/i18n/strings.g.dart';
import 'src/config/local_config.dart';
import 'src/core/di.dart';
import 'src/core/env.dart';
import 'src/core/network.dart';

void main() async {
  AppEnvironment.setupEnv(Environment.dev);
  await initializeDependencies();
  WidgetsFlutterBinding.ensureInitialized();

  // START: Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
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
