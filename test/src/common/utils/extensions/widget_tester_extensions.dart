import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe_demo/src/app/app_router.dart';
import 'package:food_recipe_demo/src/common/resources/themes.dart';

extension WidgetTesterExtensions on WidgetTester {
  Future<MaterialApp> pumpMaterialWidget(
    Widget widget, {
    bool isLightMode = true,
  }) async {
    final app = MaterialApp(
      theme: isLightMode ? AppThemes.themeLight : AppThemes.themeDark,
      home: Scaffold(body: widget),
    );
    await pumpWidget(app);
    return app;
  }

  Future<MaterialApp> pumpMaterialWidgetWithObserver(
    Widget widget,
    NavigatorObserver navigatorObserver, {
    bool isLightMode = true,
  }) async {
    final app = MaterialApp(
      theme: isLightMode ? AppThemes.themeLight : AppThemes.themeDark,
      home: Scaffold(body: widget),
      onGenerateRoute: AppRouter.onGenerateRoute,
      navigatorObservers: [navigatorObserver],
    );
    await pumpWidget(app);
    return app;
  }
}
