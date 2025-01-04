import 'package:flutter/material.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            width: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Padmakanya Multiple Campus ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                "Bagbazar, Kathmandu",
                style: TextStyle(
                    fontSize: 14, color: const Color.fromARGB(211, 255, 81, 0)),
              ), // column case  cross axis allignment.
            ],
          ),
        ],
      ),
    ));
  }
}
