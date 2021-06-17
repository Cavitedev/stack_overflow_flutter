// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Parent<T> _$ParentFromJson<T extends Item>(Map<String, dynamic> json) {
  return _Parent<T>.fromJson(json);
}

/// @nodoc
class _$ParentTearOff {
  const _$ParentTearOff();

  _Parent<T> call<T extends Item>(@DataConverter() List<T> items) {
    return _Parent<T>(
      items,
    );
  }

  Parent<T> fromJson<T extends Item>(Map<String, Object> json) {
    return Parent<T>.fromJson(json);
  }
}

/// @nodoc
const $Parent = _$ParentTearOff();

/// @nodoc
mixin _$Parent<T extends Item> {
  @DataConverter()
  List<T> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentCopyWith<T, Parent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCopyWith<T extends Item, $Res> {
  factory $ParentCopyWith(Parent<T> value, $Res Function(Parent<T>) then) =
      _$ParentCopyWithImpl<T, $Res>;
  $Res call({@DataConverter() List<T> items});
}

/// @nodoc
class _$ParentCopyWithImpl<T extends Item, $Res>
    implements $ParentCopyWith<T, $Res> {
  _$ParentCopyWithImpl(this._value, this._then);

  final Parent<T> _value;
  // ignore: unused_field
  final $Res Function(Parent<T>) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
abstract class _$ParentCopyWith<T extends Item, $Res>
    implements $ParentCopyWith<T, $Res> {
  factory _$ParentCopyWith(_Parent<T> value, $Res Function(_Parent<T>) then) =
      __$ParentCopyWithImpl<T, $Res>;
  @override
  $Res call({@DataConverter() List<T> items});
}

/// @nodoc
class __$ParentCopyWithImpl<T extends Item, $Res>
    extends _$ParentCopyWithImpl<T, $Res> implements _$ParentCopyWith<T, $Res> {
  __$ParentCopyWithImpl(_Parent<T> _value, $Res Function(_Parent<T>) _then)
      : super(_value, (v) => _then(v as _Parent<T>));

  @override
  _Parent<T> get _value => super._value as _Parent<T>;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_Parent<T>(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Parent<T extends Item>
    with DiagnosticableTreeMixin
    implements _Parent<T> {
  const _$_Parent(@DataConverter() this.items);

  factory _$_Parent.fromJson(Map<String, dynamic> json) =>
      _$_$_ParentFromJson(json);

  @override
  @DataConverter()
  final List<T> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Parent<$T>(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Parent<$T>'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Parent<T> &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$ParentCopyWith<T, _Parent<T>> get copyWith =>
      __$ParentCopyWithImpl<T, _Parent<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ParentToJson(this);
  }
}

abstract class _Parent<T extends Item> implements Parent<T> {
  const factory _Parent(@DataConverter() List<T> items) = _$_Parent<T>;

  factory _Parent.fromJson(Map<String, dynamic> json) = _$_Parent<T>.fromJson;

  @override
  @DataConverter()
  List<T> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ParentCopyWith<T, _Parent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(String name) {
    return _Item(
      name,
    );
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_Item(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Item with DiagnosticableTreeMixin implements _Item {
  const _$_Item(this.name);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item implements Item {
  const factory _Item(String name) = _$_Item;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
