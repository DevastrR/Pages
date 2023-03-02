import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/signup/localwidgets/signupform.dart';

class OurSignup extends StatelessWidget {
  const OurSignup({super.key});

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
                const OurSignupForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
