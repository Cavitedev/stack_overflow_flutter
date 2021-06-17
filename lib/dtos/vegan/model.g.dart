// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Parent<T> _$_$_ParentFromJson<T extends Item>(Map<String, dynamic> json) {
  return _$_Parent<T>(
    (json['items'] as List<dynamic>)
        .map((e) => DataConverter<T>().fromJson(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ParentToJson<T extends Item>(_$_Parent<T> instance) =>
    <String, dynamic>{
      'items': instance.items.map(DataConverter<T>().toJson).toList(),
    };
