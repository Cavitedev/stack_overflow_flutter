/// model.dart
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

@freezed
class Parent<T extends Item> with _$Parent<T> {
  const factory Parent(@DataConverter() List<T> items) = _Parent<T>;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson<T>(json);
}

@freezed
class Item with _$Item {
  const factory Item(String name) = _Item;
}

class DataConverter<T extends Item> implements JsonConverter<T, String> {
  const DataConverter();

  @override
  T fromJson(String json) {
    return Item(json) as T;
  }

  @override
  String toJson(T object) {
    return object.name;
  }
}
