import 'package:flutter/material.dart';

class FacultyCard extends StatelessWidget {
  const FacultyCard({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(89, 255, 255, 255),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/logo.png",
            width: 70,
          ),
          SizedBox(
            height: 20,
          ),
          Text(text),
          SizedBox(
            height: 20,
          ),
          // Text(text),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
