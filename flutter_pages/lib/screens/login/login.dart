import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/login/localwidgets/loginform.dart';

class OurLogin extends StatelessWidget {
  const OurLogin({super.key});

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
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.asset("assets/logo-removebg-preview.png"),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const OurLoginForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
