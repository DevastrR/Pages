// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_pages/utils/auth.dart';
import 'package:flutter_pages/widgets/our_container.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../root/root.dart';
import '../noGroup/noGroup.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _gotoNoGroup(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OurNoGroup(),
      ),
    );
  }

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
                    "CS Fundamentals",
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
                    onPressed: () => launchURL(
                        'https://docs.google.com/presentation/d/1jgY7YNEkk3UKFmlFEfX5OFzZtXuOlZeG/edit?usp=sharing&ouid=105306396148105723971&rtpof=true&sd=true'),
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
                    "Network Layer Security",
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
                    onPressed: () => launchURL(
                        'https://docs.google.com/presentation/d/15v8n2nkLOpDtqLKfhxQnLpjG5HZA1Ok86NKwPho0K9E/edit?usp=sharing'),
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
                    "Associate Analytics",
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
                    onPressed: () => launchURL(
                        'https://drive.google.com/file/d/1bcADlfn95MDX14aP88xphbQm_k4DNEcU/view?usp=sharing'),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text("Lesgooo"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 200,
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
              onPressed: () => _gotoNoGroup(context),
              child: const Text("History"),
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
