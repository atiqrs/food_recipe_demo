// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipesListResponseModel _$RecipesListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RecipesListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RecipesListResponseModel {
  @JsonKey(name: "results")
  List<Data>? get datas => throw _privateConstructorUsedError;
  @JsonKey(name: "offset")
  int? get offset => throw _privateConstructorUsedError;
  @JsonKey(name: "number")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "totalResults")
  int? get totalDatas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesListResponseModelCopyWith<RecipesListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesListResponseModelCopyWith<$Res> {
  factory $RecipesListResponseModelCopyWith(RecipesListResponseModel value,
          $Res Function(RecipesListResponseModel) then) =
      _$RecipesListResponseModelCopyWithImpl<$Res, RecipesListResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<Data>? datas,
      @JsonKey(name: "offset") int? offset,
      @JsonKey(name: "number") int? number,
      @JsonKey(name: "totalResults") int? totalDatas});
}

/// @nodoc
class _$RecipesListResponseModelCopyWithImpl<$Res,
        $Val extends RecipesListResponseModel>
    implements $RecipesListResponseModelCopyWith<$Res> {
  _$RecipesListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datas = freezed,
    Object? offset = freezed,
    Object? number = freezed,
    Object? totalDatas = freezed,
  }) {
    return _then(_value.copyWith(
      datas: freezed == datas
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDatas: freezed == totalDatas
          ? _value.totalDatas
          : totalDatas // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipesListResponseModelImplCopyWith<$Res>
    implements $RecipesListResponseModelCopyWith<$Res> {
  factory _$$RecipesListResponseModelImplCopyWith(
          _$RecipesListResponseModelImpl value,
          $Res Function(_$RecipesListResponseModelImpl) then) =
      __$$RecipesListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<Data>? datas,
      @JsonKey(name: "offset") int? offset,
      @JsonKey(name: "number") int? number,
      @JsonKey(name: "totalResults") int? totalDatas});
}

/// @nodoc
class __$$RecipesListResponseModelImplCopyWithImpl<$Res>
    extends _$RecipesListResponseModelCopyWithImpl<$Res,
        _$RecipesListResponseModelImpl>
    implements _$$RecipesListResponseModelImplCopyWith<$Res> {
  __$$RecipesListResponseModelImplCopyWithImpl(
      _$RecipesListResponseModelImpl _value,
      $Res Function(_$RecipesListResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datas = freezed,
    Object? offset = freezed,
    Object? number = freezed,
    Object? totalDatas = freezed,
  }) {
    return _then(_$RecipesListResponseModelImpl(
      datas: freezed == datas
          ? _value._datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDatas: freezed == totalDatas
          ? _value.totalDatas
          : totalDatas // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipesListResponseModelImpl implements _RecipesListResponseModel {
  const _$RecipesListResponseModelImpl(
      {@JsonKey(name: "results") final List<Data>? datas,
      @JsonKey(name: "offset") this.offset,
      @JsonKey(name: "number") this.number,
      @JsonKey(name: "totalResults") this.totalDatas})
      : _datas = datas;

  factory _$RecipesListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipesListResponseModelImplFromJson(json);

  final List<Data>? _datas;
  @override
  @JsonKey(name: "results")
  List<Data>? get datas {
    final value = _datas;
    if (value == null) return null;
    if (_datas is EqualUnmodifiableListView) return _datas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "offset")
  final int? offset;
  @override
  @JsonKey(name: "number")
  final int? number;
  @override
  @JsonKey(name: "totalResults")
  final int? totalDatas;

  @override
  String toString() {
    return 'RecipesListResponseModel(datas: $datas, offset: $offset, number: $number, totalDatas: $totalDatas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesListResponseModelImpl &&
            const DeepCollectionEquality().equals(other._datas, _datas) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.totalDatas, totalDatas) ||
                other.totalDatas == totalDatas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_datas), offset, number, totalDatas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesListResponseModelImplCopyWith<_$RecipesListResponseModelImpl>
      get copyWith => __$$RecipesListResponseModelImplCopyWithImpl<
          _$RecipesListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipesListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RecipesListResponseModel implements RecipesListResponseModel {
  const factory _RecipesListResponseModel(
          {@JsonKey(name: "results") final List<Data>? datas,
          @JsonKey(name: "offset") final int? offset,
          @JsonKey(name: "number") final int? number,
          @JsonKey(name: "totalResults") final int? totalDatas}) =
      _$RecipesListResponseModelImpl;

  factory _RecipesListResponseModel.fromJson(Map<String, dynamic> json) =
      _$RecipesListResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Data>? get datas;
  @override
  @JsonKey(name: "offset")
  int? get offset;
  @override
  @JsonKey(name: "number")
  int? get number;
  @override
  @JsonKey(name: "totalResults")
  int? get totalDatas;
  @override
  @JsonKey(ignore: true)
  _$$RecipesListResponseModelImplCopyWith<_$RecipesListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "imageType")
  String? get imageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "imageType") String? imageType});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? imageType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "imageType") String? imageType});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? imageType = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "imageType") this.imageType});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "imageType")
  final String? imageType;

  @override
  String toString() {
    return 'Data(id: $id, title: $title, image: $image, imageType: $imageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, imageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "imageType") final String? imageType}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "imageType")
  String? get imageType;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
