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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OurContainer(
              child: Column(
                children: <Widget>[
                  const Text(
                    "Resource 1",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text("Lesgooo"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OurContainer(
              child: Column(
                children: <Widget>[
                  const Text(
                    "Resource 2",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text("Lesgooo"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OurContainer(
              child: Column(
                children: <Widget>[
                  const Text(
                    "Resource 3",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text("Lesgooo"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text("data"),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Center(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  _signOut(context);
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: const Color.fromRGBO(90, 200, 250, 4),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 90),
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
