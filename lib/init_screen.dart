import 'package:flutter/foundation.dart';
import 'package:food_recipe_demo/src/app/app_router.dart';
import 'package:food_recipe_demo/src/main_common.dart';

void run({
  String initialRoute = 'initialDeveloperScreen',
  Object? initialRouteArguments,
}) {
  startApp(
    initialRoute: kDebugMode ? initialRoute : AppRouter.home,
    initialRouteArguments: initialRouteArguments,
  );
}
