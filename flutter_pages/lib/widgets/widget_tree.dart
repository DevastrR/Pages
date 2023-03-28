// ignore_for_file: no_logic_in_create_state

import 'package:flutter_pages/screens/login/login.dart';
import 'package:flutter_pages/utils/auth.dart';
import 'package:flutter_pages/screens/home/home.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();

  // ignore: non_constant_identifier_names
  _WidgetTreeState() {}
}

class WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomeScreen();
        } else {
          return const OurLogin();
        }
      },
    );
  }
}
