//Question https://stackoverflow.com/questions/67856555/json-serializable-add-a-generic-field-to-a-freezed-json-serializable-class

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vegan_item_tag_v2.freezed.dart';

part 'vegan_item_tag_v2.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class VeganItemTagV2<T> with _$VeganItemTagV2<T> {
  const VeganItemTagV2._();

  const factory VeganItemTagV2({
    required int iconCodePoint,
    required T id,
    required String name,
  }) = _VeganItemTag<T>;

  //It only works with block and not with expression bodies
  //I don't know why
  factory VeganItemTagV2.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$VeganItemTagV2FromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$VeganItemTagV2ToJson<T>(this, toJsonT);
}
