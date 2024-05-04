import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/app/initial_developer_screen.dart';

class AppRouter {
  /// initial routes
  static const initialScreen = "initialDeveloperScreen";

  /// recipe feature routes
  static const home = "home";
  static const recipeDetails = "recipeDetails";

  static PageRoute<Object> onGenerateRoute(RouteSettings settings) {
    final uri = Uri.parse(settings.name!);
    final name = uri.pathSegments[0];
    late final Widget page;

    switch (name) {
      case AppRouter.home:
        // page = HomeScreen();
        break;

      case AppRouter.initialScreen:
        page = const InitialDeveloperScreen();
        break;

      default:
        page = const InitialDeveloperScreen();
    }
    return MaterialPageRoute<Object>(
      builder: (_) => page,
      settings: settings,
    );
  }
}