import 'package:flutter/material.dart';

class OurTheme {
  Color hehe = const Color.fromRGBO(0, 254, 178, 1);
  Color bg = const Color.fromRGBO(76, 100, 217, 5);
  Color text = Colors.black;
  ThemeData buildTheme() {
    return ThemeData(
      canvasColor: bg,
      primaryColor: bg,
      secondaryHeaderColor: text,
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(color: bg))),
    );
  }
}
