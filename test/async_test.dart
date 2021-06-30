import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Await", () async {
    final int value =
        await Future.delayed(const Duration(milliseconds: 100), () => 5);

    expect(value, 5);
  });

  test("Then", () async {
    await Future.delayed(const Duration(milliseconds: 100), () => 5)
        .then((value) {
      debugPrint("2");
      expect(value, 5);
    });
  });

  test("Await Then", () async {
    // await Future.delayed(const Duration(milliseconds: 100), () => 5)
    //     .then((value) => expect(value, 5));

    await Future.delayed(const Duration(milliseconds: 100), () => 5)
        .then((value) {
      debugPrint("3");
      expect(value, 5);
    });
    debugPrint("3_2");
  });
}
