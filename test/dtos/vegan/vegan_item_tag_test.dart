import 'package:flutter_test/flutter_test.dart';
import 'package:stack_overflow/dtos/vegan/base_response.dart';
import 'package:stack_overflow/dtos/vegan/model.dart';
import 'package:stack_overflow/dtos/vegan/vegan_id.dart';
import 'package:stack_overflow/dtos/vegan/vegan_item_tag.dart';
import 'package:stack_overflow/dtos/vegan/vegan_item_tag_v2.dart';

void main() {
  test('response data', () {
    final dto = BaseResponse<ResponseData>(false, ResponseData("success"), "msg");

    final Map actual = dto.toJson((value) => value.data);

    print(actual);
  });

  test('veganItemV1', () {
    final dto = VeganItemTag(id: VeganId("id1"));

    final Map actual = dto.toJson();

    print(actual);
  });

  test('Parent item model', () {
    final dto = Parent<Item>([Item("hola")]);

    final Map actual = dto.toJson();

    print(actual);
  });

  test('veganItemV2 from and toJson', () {
    final dto = VeganItemTagV2<VeganId>(
      iconCodePoint: 1,
      id: VeganId("veganID"),
      name: "name",
    );

    final Map<String, dynamic> actualToJson = dto.toJson((id) => id.itemId());

    expect(actualToJson, {"iconCodePoint": 1, "id": "veganID", "name": "name"});

    final VeganItemTagV2 actualFromJson = VeganItemTagV2<VeganId>.fromJson(
      actualToJson,
      (json) =>
        VeganId(json as String),
    );

    expect(actualFromJson, dto);
  });
}
