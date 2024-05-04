class Endpoints {
  Endpoints._();

  static const String baseUrl = "";

  static const String home = "$baseUrl/home";

  static const String recipeSearch = "$baseUrl/recipe";
  static const String recipeFind = "$baseUrl/recipe/details";

  static String recipeDetails(String id) => "$recipeFind/$id";
}
