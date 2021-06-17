// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vegan_item_tag_v2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VeganItemTagV2TearOff {
  const _$VeganItemTagV2TearOff();

  _VeganItemTag<T> call<T>(
      {required int iconCodePoint, required T id, required String name}) {
    return _VeganItemTag<T>(
      iconCodePoint: iconCodePoint,
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $VeganItemTagV2 = _$VeganItemTagV2TearOff();

/// @nodoc
mixin _$VeganItemTagV2<T> {
  int get iconCodePoint => throw _privateConstructorUsedError;
  T get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VeganItemTagV2CopyWith<T, VeganItemTagV2<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VeganItemTagV2CopyWith<T, $Res> {
  factory $VeganItemTagV2CopyWith(
          VeganItemTagV2<T> value, $Res Function(VeganItemTagV2<T>) then) =
      _$VeganItemTagV2CopyWithImpl<T, $Res>;
  $Res call({int iconCodePoint, T id, String name});
}

/// @nodoc
class _$VeganItemTagV2CopyWithImpl<T, $Res>
    implements $VeganItemTagV2CopyWith<T, $Res> {
  _$VeganItemTagV2CopyWithImpl(this._value, this._then);

  final VeganItemTagV2<T> _value;
  // ignore: unused_field
  final $Res Function(VeganItemTagV2<T>) _then;

  @override
  $Res call({
    Object? iconCodePoint = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iconCodePoint: iconCodePoint == freezed
          ? _value.iconCodePoint
          : iconCodePoint // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as T,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VeganItemTagCopyWith<T, $Res>
    implements $VeganItemTagV2CopyWith<T, $Res> {
  factory _$VeganItemTagCopyWith(
          _VeganItemTag<T> value, $Res Function(_VeganItemTag<T>) then) =
      __$VeganItemTagCopyWithImpl<T, $Res>;
  @override
  $Res call({int iconCodePoint, T id, String name});
}

/// @nodoc
class __$VeganItemTagCopyWithImpl<T, $Res>
    extends _$VeganItemTagV2CopyWithImpl<T, $Res>
    implements _$VeganItemTagCopyWith<T, $Res> {
  __$VeganItemTagCopyWithImpl(
      _VeganItemTag<T> _value, $Res Function(_VeganItemTag<T>) _then)
      : super(_value, (v) => _then(v as _VeganItemTag<T>));

  @override
  _VeganItemTag<T> get _value => super._value as _VeganItemTag<T>;

  @override
  $Res call({
    Object? iconCodePoint = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_VeganItemTag<T>(
      iconCodePoint: iconCodePoint == freezed
          ? _value.iconCodePoint
          : iconCodePoint // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as T,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VeganItemTag<T> extends _VeganItemTag<T> {
  const _$_VeganItemTag(
      {required this.iconCodePoint, required this.id, required this.name})
      : super._();

  @override
  final int iconCodePoint;
  @override
  final T id;
  @override
  final String name;

  @override
  String toString() {
    return 'VeganItemTagV2<$T>(iconCodePoint: $iconCodePoint, id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VeganItemTag<T> &&
            (identical(other.iconCodePoint, iconCodePoint) ||
                const DeepCollectionEquality()
                    .equals(other.iconCodePoint, iconCodePoint)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iconCodePoint) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$VeganItemTagCopyWith<T, _VeganItemTag<T>> get copyWith =>
      __$VeganItemTagCopyWithImpl<T, _VeganItemTag<T>>(this, _$identity);
}

abstract class _VeganItemTag<T> extends VeganItemTagV2<T> {
  const factory _VeganItemTag(
      {required int iconCodePoint,
      required T id,
      required String name}) = _$_VeganItemTag<T>;
  const _VeganItemTag._() : super._();

  @override
  int get iconCodePoint => throw _privateConstructorUsedError;
  @override
  T get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VeganItemTagCopyWith<T, _VeganItemTag<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
