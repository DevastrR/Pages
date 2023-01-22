import 'package:flutter/material.dart';
import 'package:flutter_pages/widgets/our_container.dart';

class OurLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          child: Text("Login",
              style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold)),
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.alternate_email), hintText: "Email"),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock_outline), hintText: "Enter Password"),
        ),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                "Log In",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            )),
        TextButton(
          onPressed: () {},
          child: const Text("Don't have an account? Sign Up"),
        )
      ]),
    );
  }
}
