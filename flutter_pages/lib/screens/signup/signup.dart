import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/signup/localwidgets/signupform.dart';

class OurSignUp extends StatelessWidget {
  const OurSignUp({Key? key}) : super(key: key);
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
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      BackButton(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80.0,
                ),
                const OurSignUpForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
