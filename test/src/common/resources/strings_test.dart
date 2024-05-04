import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe_demo/src/common/resources/strings.dart';

void main() {
  String stringsName = "Strings";

  group('$stringsName Tests: ', () {
    test('should return the correct error message', () async {
      var errorMessage = AppStrings.defaultErrorMessageWithInfo("Error Message");
      expect("Oops, something went wrong [Error Message]", errorMessage);
    });

    test('should return the correct noServerConnectionWithCodeErrorMessage', () async {
      var errorMessage = AppStrings.noServerConnectionWithCodeErrorMessage(404);
      expect("Cannot reach server [404]", errorMessage);
    });
  });
}
