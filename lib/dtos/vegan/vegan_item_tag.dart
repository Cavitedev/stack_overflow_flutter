import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stack_overflow/dtos/vegan/vegan_id.dart';

part 'vegan_item_tag.freezed.dart';

part 'vegan_item_tag.g.dart';

@freezed
class VeganItemTag with _$VeganItemTag {
  const VeganItemTag._();

  const factory VeganItemTag({
    @VeganIdConverter() VeganId? id,
  }) = _VeganItemTag;

  factory VeganItemTag.fromJson(Map<String, dynamic> json) =>
      _$VeganItemTagFromJson(json);
}

class VeganIdConverter implements JsonConverter<VeganId?, String?> {
  const VeganIdConverter();

  @override
  VeganId? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return VeganId(json);
  }

  @override
  String? toJson(VeganId? object) {
    return object?.itemId();
  }
}
