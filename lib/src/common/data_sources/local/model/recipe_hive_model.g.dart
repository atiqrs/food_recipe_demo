// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeHiveModelAdapter extends TypeAdapter<RecipeHiveModel> {
  @override
  final int typeId = 0;

  @override
  RecipeHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeHiveModel(
      id: fields[0] as int,
      title: fields[1] as String,
      image: fields[2] as String,
      imageType: fields[3] as String,
      ingredients: (fields[4] as List).cast<String>(),
      time: fields[5] as String,
      isSaved: fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, RecipeHiveModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.imageType)
      ..writeByte(4)
      ..write(obj.ingredients)
      ..writeByte(5)
      ..write(obj.time)
      ..writeByte(6)
      ..write(obj.isSaved);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
