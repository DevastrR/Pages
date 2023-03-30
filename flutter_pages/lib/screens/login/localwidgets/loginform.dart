import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/home/home.dart';
import 'package:flutter_pages/screens/signup/signup.dart';
import 'package:flutter_pages/widgets/our_container.dart';

class OurLoginForm extends StatefulWidget {
  const OurLoginForm({super.key});

  @override
  State<OurLoginForm> createState() => _OurLoginFormState();
}

class _OurLoginFormState extends State<OurLoginForm> {
  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            child: Text(
              "Log In",
              style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
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
              hintText: "Password",
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                "Log In",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
            },
          ),
          TextButton(
              child: const Text("Don't have an account? Sign Up"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OurSignup(),
                  ),
                );
              })
        ],
      ),
    );
  }
}
