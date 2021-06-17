import 'package:flutter_test/flutter_test.dart';

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
}

Future getInitialPosition<int>() async {
  await Future.delayed(Duration(seconds: 5));
  return 5;
}
