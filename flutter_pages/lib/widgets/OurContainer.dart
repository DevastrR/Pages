import 'package:flutter/material.dart';

class OurContainer extends StatelessWidget {
  const OurContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: (color: Colors.grey,
        )
      ),
    );
  }
}