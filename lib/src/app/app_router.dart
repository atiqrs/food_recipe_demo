import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/app/initial_developer_screen.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/pages/home_screen.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/pages/recipe_details_screen.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/pages/recipe_details_screen_argument.dart';

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
        page = const HomeScreen();
        break;
      case AppRouter.recipeDetails:
        final argument = settings.arguments as RecipeDetailsScreenArgument;
        page = RecipeDetailsScreen(argument: argument);
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
