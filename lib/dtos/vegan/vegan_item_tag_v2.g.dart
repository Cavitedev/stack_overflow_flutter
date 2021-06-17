// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vegan_item_tag_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VeganItemTagV2<T> _$VeganItemTagV2FromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return VeganItemTagV2<T>(
    iconCodePoint: json['iconCodePoint'] as int,
    id: fromJsonT(json['id']),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$VeganItemTagV2ToJson<T>(
  VeganItemTagV2<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'iconCodePoint': instance.iconCodePoint,
      'id': toJsonT(instance.id),
      'name': instance.name,
    };
