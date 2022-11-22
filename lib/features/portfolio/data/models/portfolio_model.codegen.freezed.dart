// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portfolio_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PortfolioModel _$PortfolioModelFromJson(Map<String, dynamic> json) {
  return _PortfolioModel.fromJson(json);
}

/// @nodoc
mixin _$PortfolioModel {
  int get id => throw _privateConstructorUsedError;
  String get imageCover => throw _privateConstructorUsedError;
  String get phil => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioModelCopyWith<PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioModelCopyWith<$Res> {
  factory $PortfolioModelCopyWith(
          PortfolioModel value, $Res Function(PortfolioModel) then) =
      _$PortfolioModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String imageCover,
      String phil,
      String title,
      String description});
}

/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._value, this._then);

  final PortfolioModel _value;
  // ignore: unused_field
  final $Res Function(PortfolioModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageCover = freezed,
    Object? phil = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageCover: imageCover == freezed
          ? _value.imageCover
          : imageCover // ignore: cast_nullable_to_non_nullable
              as String,
      phil: phil == freezed
          ? _value.phil
          : phil // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PortfolioModelCopyWith<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  factory _$$_PortfolioModelCopyWith(
          _$_PortfolioModel value, $Res Function(_$_PortfolioModel) then) =
      __$$_PortfolioModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String imageCover,
      String phil,
      String title,
      String description});
}

/// @nodoc
class __$$_PortfolioModelCopyWithImpl<$Res>
    extends _$PortfolioModelCopyWithImpl<$Res>
    implements _$$_PortfolioModelCopyWith<$Res> {
  __$$_PortfolioModelCopyWithImpl(
      _$_PortfolioModel _value, $Res Function(_$_PortfolioModel) _then)
      : super(_value, (v) => _then(v as _$_PortfolioModel));

  @override
  _$_PortfolioModel get _value => super._value as _$_PortfolioModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageCover = freezed,
    Object? phil = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_PortfolioModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageCover: imageCover == freezed
          ? _value.imageCover
          : imageCover // ignore: cast_nullable_to_non_nullable
              as String,
      phil: phil == freezed
          ? _value.phil
          : phil // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortfolioModel implements _PortfolioModel {
  _$_PortfolioModel(
      {required this.id,
      required this.imageCover,
      required this.phil,
      required this.title,
      required this.description});

  factory _$_PortfolioModel.fromJson(Map<String, dynamic> json) =>
      _$$_PortfolioModelFromJson(json);

  @override
  final int id;
  @override
  final String imageCover;
  @override
  final String phil;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'PortfolioModel(id: $id, imageCover: $imageCover, phil: $phil, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.imageCover, imageCover) &&
            const DeepCollectionEquality().equals(other.phil, phil) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageCover),
      const DeepCollectionEquality().hash(phil),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_PortfolioModelCopyWith<_$_PortfolioModel> get copyWith =>
      __$$_PortfolioModelCopyWithImpl<_$_PortfolioModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortfolioModelToJson(
      this,
    );
  }
}

abstract class _PortfolioModel implements PortfolioModel {
  factory _PortfolioModel(
      {required final int id,
      required final String imageCover,
      required final String phil,
      required final String title,
      required final String description}) = _$_PortfolioModel;

  factory _PortfolioModel.fromJson(Map<String, dynamic> json) =
      _$_PortfolioModel.fromJson;

  @override
  int get id;
  @override
  String get imageCover;
  @override
  String get phil;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioModelCopyWith<_$_PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}
