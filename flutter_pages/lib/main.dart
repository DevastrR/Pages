import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/login/login.dart';
import 'package:flutter_pages/utils/our_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final OurTheme _theme = OurTheme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _theme.buildTheme,
      home: const OurLogin(),
    );
  }
}
