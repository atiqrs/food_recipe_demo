abstract class AppStrings {
  static const packageName = 'food_recipe_demo';

  static const defaultErrorScreenTitle = 'That didn\'t load right. ';
  static const tryAgain = 'Try Again';
  static const sessionTimeoutErrorMessage = "Session timeout";
  static const defaultErrorMessage = 'Oops, Something went wrong.';

  static String defaultErrorMessageWithInfo(String info) => "Oops, something went wrong [$info]";

  static String noServerConnectionWithCodeErrorMessage(int code) => "Cannot reach server [$code]";
  static const noServerConnectionErrorMessage = "Cannot reach server";
  static const noInternetErrorMessage = "No internet connection";
  static const networkError = "Network Error";

  static const cannotLoadDataError = "Something went wrong!\nCannot load data!!";

  //DEV texts
  static const notImpl = "Not implemented yet !!!";
  static const disableBtn = "This button is disable/feature not available !!!";

  //Home Screen
  static const orSymbleText = ' | ';
  static const homeScreenTitle = "Home";
  static const searchHint = "Write Recipe Name";

  //Recipe Details Screen
  static String timeSetup(int time) => "$time min";
  static const ingredientsText = "Ingredients";

  static String stepNumber(int number) => "Step $number";

  // Mock texts
  static const mockRecipeImageLink =
      "https://th.bing.com/th/id/OIP.OwdxZAqIbEafgpEy0KkL4AHaE2?w=287&h=188&c=7&r=0&o=5&dpr=1.1&pid=1.7";
  static const mockRecipeTitle = "Spaghetti Carbonara";
  static const mockRecipeIngredients = ['egg', 'avocado', 'toast', 'etc.'];
  static const mockRecipeTime = "30 min";
}
