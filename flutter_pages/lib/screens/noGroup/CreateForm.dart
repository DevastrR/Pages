// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_pages/widgets/our_container.dart';
import 'package:url_launcher/url_launcher.dart';

class OurCreateForm extends StatefulWidget {
  const OurCreateForm({super.key});

  @override
  State<OurCreateForm> createState() => _OurCreateFormState();
}

class _OurCreateFormState extends State<OurCreateForm> {
  TextEditingController nameController = TextEditingController();

  TextEditingController linkController = TextEditingController();

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
            controller: nameController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.read_more_rounded),
              hintText: "Name of Resource",
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: linkController,
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
            onPressed: () async {
              String subject = nameController.text;
              String body = linkController.text;
              final Uri email = Uri(
                scheme: 'mailto',
                path: 'awalbhavesh@gmail.com',
                query: 'subject =' +
                    Uri.encodeComponent(subject) +
                    '&body' +
                    Uri.encodeComponent(body),
              );

              if (await canLaunchUrl(email)) {
                await launchUrl(email);
              } else {
                debugPrint('error');
              }
            },
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
