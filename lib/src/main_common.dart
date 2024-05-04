import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_recipe_demo/src/app/current_app.dart';

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

  return runApp(
    CurrentApp(
      initialRoute: initialRoute,
      initialRouteArguments: initialRouteArguments,
    ),
  );
}
