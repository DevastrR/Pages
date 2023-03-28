// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_pages/utils/auth.dart';
import 'package:flutter_pages/widgets/our_container.dart';
import 'package:provider/provider.dart';

import '../../root/root.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _signOut(BuildContext context) async {
    User? currentUser = Provider.of<User?>(context, listen: false);
    Future<void> returnString = Auth().signOut();

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const OurRoot(),
        ),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: OurContainer(
              child: Text("1"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: OurContainer(
              child: Text("2"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: OurContainer(
              child: Text("3"),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("data"),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton(
                  onPressed: () {
                    _signOut(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Text(
                      "Sign Out",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
