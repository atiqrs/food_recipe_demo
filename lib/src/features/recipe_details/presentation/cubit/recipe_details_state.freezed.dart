// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipesDetailsResponseModel model) ready,
    required TResult Function(AppError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipesDetailsResponseModel model)? ready,
    TResult? Function(AppError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipesDetailsResponseModel model)? ready,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingRecipeDetailsState value) loading,
    required TResult Function(_ReadyRecipeDetailsState value) ready,
    required TResult Function(_ErrorRecipeDetailsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingRecipeDetailsState value)? loading,
    TResult? Function(_ReadyRecipeDetailsState value)? ready,
    TResult? Function(_ErrorRecipeDetailsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingRecipeDetailsState value)? loading,
    TResult Function(_ReadyRecipeDetailsState value)? ready,
    TResult Function(_ErrorRecipeDetailsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsStateCopyWith<$Res> {
  factory $RecipeDetailsStateCopyWith(
          RecipeDetailsState value, $Res Function(RecipeDetailsState) then) =
      _$RecipeDetailsStateCopyWithImpl<$Res, RecipeDetailsState>;
}

/// @nodoc
class _$RecipeDetailsStateCopyWithImpl<$Res, $Val extends RecipeDetailsState>
    implements $RecipeDetailsStateCopyWith<$Res> {
  _$RecipeDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingRecipeDetailsStateImplCopyWith<$Res> {
  factory _$$LoadingRecipeDetailsStateImplCopyWith(
          _$LoadingRecipeDetailsStateImpl value,
          $Res Function(_$LoadingRecipeDetailsStateImpl) then) =
      __$$LoadingRecipeDetailsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingRecipeDetailsStateImplCopyWithImpl<$Res>
    extends _$RecipeDetailsStateCopyWithImpl<$Res,
        _$LoadingRecipeDetailsStateImpl>
    implements _$$LoadingRecipeDetailsStateImplCopyWith<$Res> {
  __$$LoadingRecipeDetailsStateImplCopyWithImpl(
      _$LoadingRecipeDetailsStateImpl _value,
      $Res Function(_$LoadingRecipeDetailsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingRecipeDetailsStateImpl implements _LoadingRecipeDetailsState {
  const _$LoadingRecipeDetailsStateImpl();

  @override
  String toString() {
    return 'RecipeDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingRecipeDetailsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipesDetailsResponseModel model) ready,
    required TResult Function(AppError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipesDetailsResponseModel model)? ready,
    TResult? Function(AppError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipesDetailsResponseModel model)? ready,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingRecipeDetailsState value) loading,
    required TResult Function(_ReadyRecipeDetailsState value) ready,
    required TResult Function(_ErrorRecipeDetailsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingRecipeDetailsState value)? loading,
    TResult? Function(_ReadyRecipeDetailsState value)? ready,
    TResult? Function(_ErrorRecipeDetailsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingRecipeDetailsState value)? loading,
    TResult Function(_ReadyRecipeDetailsState value)? ready,
    TResult Function(_ErrorRecipeDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingRecipeDetailsState implements RecipeDetailsState {
  const factory _LoadingRecipeDetailsState() = _$LoadingRecipeDetailsStateImpl;
}

/// @nodoc
abstract class _$$ReadyRecipeDetailsStateImplCopyWith<$Res> {
  factory _$$ReadyRecipeDetailsStateImplCopyWith(
          _$ReadyRecipeDetailsStateImpl value,
          $Res Function(_$ReadyRecipeDetailsStateImpl) then) =
      __$$ReadyRecipeDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipesDetailsResponseModel model});

  $RecipesDetailsResponseModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$ReadyRecipeDetailsStateImplCopyWithImpl<$Res>
    extends _$RecipeDetailsStateCopyWithImpl<$Res,
        _$ReadyRecipeDetailsStateImpl>
    implements _$$ReadyRecipeDetailsStateImplCopyWith<$Res> {
  __$$ReadyRecipeDetailsStateImplCopyWithImpl(
      _$ReadyRecipeDetailsStateImpl _value,
      $Res Function(_$ReadyRecipeDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ReadyRecipeDetailsStateImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RecipesDetailsResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipesDetailsResponseModelCopyWith<$Res> get model {
    return $RecipesDetailsResponseModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$ReadyRecipeDetailsStateImpl implements _ReadyRecipeDetailsState {
  const _$ReadyRecipeDetailsStateImpl({required this.model});

  @override
  final RecipesDetailsResponseModel model;

  @override
  String toString() {
    return 'RecipeDetailsState.ready(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyRecipeDetailsStateImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyRecipeDetailsStateImplCopyWith<_$ReadyRecipeDetailsStateImpl>
      get copyWith => __$$ReadyRecipeDetailsStateImplCopyWithImpl<
          _$ReadyRecipeDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipesDetailsResponseModel model) ready,
    required TResult Function(AppError error) error,
  }) {
    return ready(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipesDetailsResponseModel model)? ready,
    TResult? Function(AppError error)? error,
  }) {
    return ready?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipesDetailsResponseModel model)? ready,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingRecipeDetailsState value) loading,
    required TResult Function(_ReadyRecipeDetailsState value) ready,
    required TResult Function(_ErrorRecipeDetailsState value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingRecipeDetailsState value)? loading,
    TResult? Function(_ReadyRecipeDetailsState value)? ready,
    TResult? Function(_ErrorRecipeDetailsState value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingRecipeDetailsState value)? loading,
    TResult Function(_ReadyRecipeDetailsState value)? ready,
    TResult Function(_ErrorRecipeDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _ReadyRecipeDetailsState implements RecipeDetailsState {
  const factory _ReadyRecipeDetailsState(
          {required final RecipesDetailsResponseModel model}) =
      _$ReadyRecipeDetailsStateImpl;

  RecipesDetailsResponseModel get model;
  @JsonKey(ignore: true)
  _$$ReadyRecipeDetailsStateImplCopyWith<_$ReadyRecipeDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorRecipeDetailsStateImplCopyWith<$Res> {
  factory _$$ErrorRecipeDetailsStateImplCopyWith(
          _$ErrorRecipeDetailsStateImpl value,
          $Res Function(_$ErrorRecipeDetailsStateImpl) then) =
      __$$ErrorRecipeDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$ErrorRecipeDetailsStateImplCopyWithImpl<$Res>
    extends _$RecipeDetailsStateCopyWithImpl<$Res,
        _$ErrorRecipeDetailsStateImpl>
    implements _$$ErrorRecipeDetailsStateImplCopyWith<$Res> {
  __$$ErrorRecipeDetailsStateImplCopyWithImpl(
      _$ErrorRecipeDetailsStateImpl _value,
      $Res Function(_$ErrorRecipeDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorRecipeDetailsStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$ErrorRecipeDetailsStateImpl implements _ErrorRecipeDetailsState {
  const _$ErrorRecipeDetailsStateImpl({required this.error});

  @override
  final AppError error;

  @override
  String toString() {
    return 'RecipeDetailsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorRecipeDetailsStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorRecipeDetailsStateImplCopyWith<_$ErrorRecipeDetailsStateImpl>
      get copyWith => __$$ErrorRecipeDetailsStateImplCopyWithImpl<
          _$ErrorRecipeDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(RecipesDetailsResponseModel model) ready,
    required TResult Function(AppError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(RecipesDetailsResponseModel model)? ready,
    TResult? Function(AppError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(RecipesDetailsResponseModel model)? ready,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingRecipeDetailsState value) loading,
    required TResult Function(_ReadyRecipeDetailsState value) ready,
    required TResult Function(_ErrorRecipeDetailsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingRecipeDetailsState value)? loading,
    TResult? Function(_ReadyRecipeDetailsState value)? ready,
    TResult? Function(_ErrorRecipeDetailsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingRecipeDetailsState value)? loading,
    TResult Function(_ReadyRecipeDetailsState value)? ready,
    TResult Function(_ErrorRecipeDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorRecipeDetailsState implements RecipeDetailsState {
  const factory _ErrorRecipeDetailsState({required final AppError error}) =
      _$ErrorRecipeDetailsStateImpl;

  AppError get error;
  @JsonKey(ignore: true)
  _$$ErrorRecipeDetailsStateImplCopyWith<_$ErrorRecipeDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
