import 'package:flutter/material.dart';

final List<Map> myProducts =
    List.generate(100000, (index) => {"id": index, "name": "Product $index"})
        .toList();
// should be pulled from firebase
final primary_color_bright = Color.fromARGB(255, 0, 176, 240);
final complementary_color_bright = Color.fromARGB(255, 157, 195, 230);
final background_color_bright = Color.fromARGB(255, 255, 255, 255);
final primary_color_dark = Color.fromARGB(255, 45, 69, 108);
final complementary_color_dark = Color.fromARGB(255, 158, 179, 226);
final background_color_dark = Color.fromARGB(255, 21, 31, 50);
