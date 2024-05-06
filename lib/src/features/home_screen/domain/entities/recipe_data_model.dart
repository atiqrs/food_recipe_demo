class RecipesListModel {
  final List<Recipe> datas;

  RecipesListModel({
    required this.datas,
  });
}

class Recipe {
  final int id;
  final String title;
  final String image;
  final String imageType;
  final List<String> ingredients;
  final String time;
  final bool isSaved;

  Recipe({
    required this.id,
    required this.title,
    required this.image,
    required this.imageType,
    required this.ingredients,
    required this.time,
    this.isSaved = false,
  });
}
