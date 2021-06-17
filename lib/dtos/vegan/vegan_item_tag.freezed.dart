// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vegan_item_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VeganItemTag _$VeganItemTagFromJson(Map<String, dynamic> json) {
  return _VeganItemTag.fromJson(json);
}

/// @nodoc
class _$VeganItemTagTearOff {
  const _$VeganItemTagTearOff();

  _VeganItemTag call({@VeganIdConverter() VeganId? id}) {
    return _VeganItemTag(
      id: id,
    );
  }

  VeganItemTag fromJson(Map<String, Object> json) {
    return VeganItemTag.fromJson(json);
  }
}

/// @nodoc
const $VeganItemTag = _$VeganItemTagTearOff();

/// @nodoc
mixin _$VeganItemTag {
  @VeganIdConverter()
  VeganId? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VeganItemTagCopyWith<VeganItemTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VeganItemTagCopyWith<$Res> {
  factory $VeganItemTagCopyWith(
          VeganItemTag value, $Res Function(VeganItemTag) then) =
      _$VeganItemTagCopyWithImpl<$Res>;
  $Res call({@VeganIdConverter() VeganId? id});
}

/// @nodoc
class _$VeganItemTagCopyWithImpl<$Res> implements $VeganItemTagCopyWith<$Res> {
  _$VeganItemTagCopyWithImpl(this._value, this._then);

  final VeganItemTag _value;
  // ignore: unused_field
  final $Res Function(VeganItemTag) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VeganId?,
    ));
  }
}

/// @nodoc
abstract class _$VeganItemTagCopyWith<$Res>
    implements $VeganItemTagCopyWith<$Res> {
  factory _$VeganItemTagCopyWith(
          _VeganItemTag value, $Res Function(_VeganItemTag) then) =
      __$VeganItemTagCopyWithImpl<$Res>;
  @override
  $Res call({@VeganIdConverter() VeganId? id});
}

/// @nodoc
class __$VeganItemTagCopyWithImpl<$Res> extends _$VeganItemTagCopyWithImpl<$Res>
    implements _$VeganItemTagCopyWith<$Res> {
  __$VeganItemTagCopyWithImpl(
      _VeganItemTag _value, $Res Function(_VeganItemTag) _then)
      : super(_value, (v) => _then(v as _VeganItemTag));

  @override
  _VeganItemTag get _value => super._value as _VeganItemTag;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_VeganItemTag(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VeganId?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VeganItemTag extends _VeganItemTag {
  const _$_VeganItemTag({@VeganIdConverter() this.id}) : super._();

  factory _$_VeganItemTag.fromJson(Map<String, dynamic> json) =>
      _$_$_VeganItemTagFromJson(json);

  @override
  @VeganIdConverter()
  final VeganId? id;

  @override
  String toString() {
    return 'VeganItemTag(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VeganItemTag &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$VeganItemTagCopyWith<_VeganItemTag> get copyWith =>
      __$VeganItemTagCopyWithImpl<_VeganItemTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VeganItemTagToJson(this);
  }
}

abstract class _VeganItemTag extends VeganItemTag {
  const factory _VeganItemTag({@VeganIdConverter() VeganId? id}) =
      _$_VeganItemTag;
  const _VeganItemTag._() : super._();

  factory _VeganItemTag.fromJson(Map<String, dynamic> json) =
      _$_VeganItemTag.fromJson;

  @override
  @VeganIdConverter()
  VeganId? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VeganItemTagCopyWith<_VeganItemTag> get copyWith =>
      throw _privateConstructorUsedError;
}
