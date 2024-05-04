import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_recipe_demo/src/app/current_app.dart';
import 'package:food_recipe_demo/src/common/di/service_locator.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> startApp({
  required String initialRoute,
  Object? initialRouteArguments,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]),
  );

  await Hive.initFlutter();
  await setupServiceLocator();

  return runApp(
    CurrentApp(
      initialRoute: initialRoute,
      initialRouteArguments: initialRouteArguments,
    ),
  );
}
