import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/app/app_router.dart';

class CurrentApp extends StatelessWidget {
  final String initialRoute;
  final Object? initialRouteArguments;

  const CurrentApp({
    Key? key,
    required this.initialRoute,
    required this.initialRouteArguments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      initialRoute: initialRoute,
      onGenerateInitialRoutes: (initialRoute) {
        return [
          AppRouter.onGenerateRoute(RouteSettings(
            name: initialRoute,
            arguments: initialRouteArguments,
          )),
        ];
      },
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
