// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portfolio_entity.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioEntity {
  int get id => throw _privateConstructorUsedError;
  String get imageCover => throw _privateConstructorUsedError;
  String get phil => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioEntityCopyWith<PortfolioEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioEntityCopyWith<$Res> {
  factory $PortfolioEntityCopyWith(
          PortfolioEntity value, $Res Function(PortfolioEntity) then) =
      _$PortfolioEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String imageCover,
      String phil,
      String title,
      String description});
}

/// @nodoc
class _$PortfolioEntityCopyWithImpl<$Res>
    implements $PortfolioEntityCopyWith<$Res> {
  _$PortfolioEntityCopyWithImpl(this._value, this._then);

  final PortfolioEntity _value;
  // ignore: unused_field
  final $Res Function(PortfolioEntity) _then;

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
abstract class _$$_PortfolioEntityCopyWith<$Res>
    implements $PortfolioEntityCopyWith<$Res> {
  factory _$$_PortfolioEntityCopyWith(
          _$_PortfolioEntity value, $Res Function(_$_PortfolioEntity) then) =
      __$$_PortfolioEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String imageCover,
      String phil,
      String title,
      String description});
}

/// @nodoc
class __$$_PortfolioEntityCopyWithImpl<$Res>
    extends _$PortfolioEntityCopyWithImpl<$Res>
    implements _$$_PortfolioEntityCopyWith<$Res> {
  __$$_PortfolioEntityCopyWithImpl(
      _$_PortfolioEntity _value, $Res Function(_$_PortfolioEntity) _then)
      : super(_value, (v) => _then(v as _$_PortfolioEntity));

  @override
  _$_PortfolioEntity get _value => super._value as _$_PortfolioEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageCover = freezed,
    Object? phil = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_PortfolioEntity(
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

class _$_PortfolioEntity implements _PortfolioEntity {
  _$_PortfolioEntity(
      {required this.id,
      required this.imageCover,
      required this.phil,
      required this.title,
      required this.description});

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
    return 'PortfolioEntity(id: $id, imageCover: $imageCover, phil: $phil, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.imageCover, imageCover) &&
            const DeepCollectionEquality().equals(other.phil, phil) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

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
  _$$_PortfolioEntityCopyWith<_$_PortfolioEntity> get copyWith =>
      __$$_PortfolioEntityCopyWithImpl<_$_PortfolioEntity>(this, _$identity);
}

abstract class _PortfolioEntity implements PortfolioEntity {
  factory _PortfolioEntity(
      {required final int id,
      required final String imageCover,
      required final String phil,
      required final String title,
      required final String description}) = _$_PortfolioEntity;

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
  _$$_PortfolioEntityCopyWith<_$_PortfolioEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
