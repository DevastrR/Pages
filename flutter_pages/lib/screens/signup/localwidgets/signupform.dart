import 'package:flutter/material.dart';
//import 'package:flutter_pages/screens/signup/signup.dart';
import 'package:flutter_pages/widgets/our_container.dart';

class OurSignUpForm extends StatelessWidget {
  const OurSignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 8.0,
            ),
            child: Text("Sign Up",
                style: TextStyle(
                    color: Theme.of(context).secondaryHeaderColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline),
              hintText: "Name",
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.alternate_email),
              hintText: "Email",
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              hintText: "Enter Password",
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock_open),
              hintText: "Confirm Password",
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
          ),
          const Text(
            "By signing up you agree to our Privacy Policy and Terms.",
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
