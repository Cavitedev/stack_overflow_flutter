import 'package:flutter_test/flutter_test.dart';
import 'package:stack_overflow/dtos/vegan/model.dart';

void main() {
  test("add more value in the List from TextForm in flutter", () {
    List<Map> listMap = [
      {"fecha1": "1"},
      {"fecha2": "2"}
    ];

    Map result = listMap.fold({}, (map1, map2) => map1..addAll(map2));

    expect(result, {"fecha1": "1", "fecha2": "2"});
  });

  test("Future with return value at the end", () async {
    final int val = await getInitialPosition();
    expect(val, 5);
  });

  test("List to Map", (){
    final List<Map> list = [{"title": "ej1", "data": "data1"},{"title": "ej2", "data": "data2"}];


    final result = Map.fromIterable(list, key: (val) => val["title"], value: (val) => val);


    expect(result, {
      "ej1": {"title": "ej1", "data": "data1"},
      "ej2": {"title": "ej2", "data": "data2"}
    });

  });

  test('String to int',(){
    String dat = "5";
    // num.parse(input)

  });

}

Future<int> getInitialPosition() async {
  await Future.delayed(Duration(seconds: 5));
  return 5;
}
