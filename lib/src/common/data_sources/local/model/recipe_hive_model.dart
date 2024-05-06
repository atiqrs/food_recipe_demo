import 'package:hive/hive.dart';

part 'recipe_hive_model.g.dart';

@HiveType(typeId: 0)
class RecipeHiveModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String image;
  @HiveField(3)
  final String imageType;
  @HiveField(4)
  final List<String> ingredients;
  @HiveField(5)
  final String time;
  @HiveField(6)
  final bool isSaved;

  RecipeHiveModel({
    required this.id,
    required this.title,
    required this.image,
    required this.imageType,
    required this.ingredients,
    required this.time,
    required this.isSaved,
  });
}
