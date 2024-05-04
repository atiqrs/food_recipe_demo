import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe_demo/src/app/initial_developer_screen.dart';

import '../common/utils/extensions/widget_tester_extensions.dart';

void main() {
  late Widget sut;
  var widgetName = "InitialDeveloperScreen";

  setUp(() {
    sut = const InitialDeveloperScreen();
  });

  group('$widgetName Widget Tests: ', () {
    testWidgets('should show initial developer screen\'s item', (tester) async {
      await tester.pumpMaterialWidget(sut);
      expect(find.text("Home Screen"), findsOneWidget);
    });
  });
}
