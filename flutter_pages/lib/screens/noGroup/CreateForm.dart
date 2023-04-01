// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_pages/widgets/our_container.dart';

class OurCreateForm extends StatelessWidget {
  const OurCreateForm({super.key});

  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              "Request to add resource :",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.read_more_rounded),
              hintText: "Name of Resource",
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.link),
              hintText: "Link to resource",
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("Request"),
            ),
          ),
        ],
      ),
    );
  }
}
