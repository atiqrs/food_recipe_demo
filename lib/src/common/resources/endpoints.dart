class Endpoints {
  Endpoints._();

  static const String rapidApiKey = "1a2bd7d529msh513ba3b70195a79p1acf77jsned01ab52cffa";

  static const String baseUrl = "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com";

  static const String recipes = "$baseUrl/recipes";

  static const String recipeSearch = "$recipes/complexSearch";
  static const String recipeFindPostfix = "/information";

  static String recipeListQuery(String keyword) => "$recipeSearch?query=$keyword";
  static String recipeDetails(String id) => "$recipes/$id$recipeFindPostfix";
}
