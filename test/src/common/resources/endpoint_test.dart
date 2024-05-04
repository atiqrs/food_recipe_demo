import 'package:flutter_test/flutter_test.dart';
import 'package:food_recipe_demo/src/common/resources/endpoints.dart';

void main() {
  String endpointName = "Endpoint";

  group('$endpointName Tests: ', () {
    test('should return the correct recipeSearch endpoint', () async {
      var recipeSearch = Endpoints.recipeListQuery('burger');
      expect("${Endpoints.baseUrl}/recipes/complexSearch?query=burger", recipeSearch);
    });

    test('should return the correct recipeDetails endpoint', () async {
      var recipeDetails = Endpoints.recipeDetails('123');
      expect("${Endpoints.baseUrl}/recipes/123/information", recipeDetails);
    });
  });
}
