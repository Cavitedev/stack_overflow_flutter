import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Online image to 8IntList", () async {
    String imageUrl =
        "https://firebasestorage.googleapis.com/v0/b/contactsscored.appspot.com/o/Users%2FVr0usHe4ZBWecZe6YcQWJMaFynf1%2Fcontacts%2Ff88cdaa0-d37f-11eb-925e-89c87dae2d3b%2Favatar.jpg?alt=media&token=926c5b8c-c6df-4fce-ae39-f54398edbd19";
    Uint8List bytes =
        (await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl))
            .buffer
            .asUint8List();

    // debugPrint(bytes.toString());
  });
}
