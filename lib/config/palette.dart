// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyPalette {
  static const Color primary_color = Color.fromRGBO(255, 90, 90, 1);
  static const Color secondary_color = Color.fromRGBO(255, 176, 90, 1);
  static const Color custom_blue_color = Color.fromRGBO(58, 65, 255, 1);
  static const TextStyle pink_text_style = TextStyle(
    color: primary_color,
    fontSize: 14,
    // fontFamily: "lemon",
  );
  static const TextStyle orange_text_style = TextStyle(
    color: secondary_color,
    fontSize: 14,
    // fontFamily: "lemon",
  );

  static const TextStyle white_text_style = TextStyle(
    color: Colors.white,
    fontSize: 14,
    // fontFamily: "lemon",
  );
}
