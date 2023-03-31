// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'CreateForm.dart';

class MyFile extends StatelessWidget {
  const MyFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    BackButton(),
                  ],
                ),
                const SizedBox(
                  height: 130.0,
                ),
                const OurCreateForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
