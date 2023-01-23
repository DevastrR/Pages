import 'package:flutter/material.dart';

class OurTheme {
  Color sec = const Color.fromRGBO(0, 254, 178, 1);
  Color prim = const Color.fromRGBO(76, 100, 217, 5);
  Color bg = const Color.fromRGBO(90, 200, 250, 4);
  Color text = Colors.black;
  ThemeData buildTheme() {
    return ThemeData(
        canvasColor: bg,
        primaryColor: prim,
        secondaryHeaderColor: text,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: bg),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: bg),
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: bg,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          minWidth: 200,
          height: 40.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ));
  }
}
