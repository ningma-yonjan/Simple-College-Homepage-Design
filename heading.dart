import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.headin});

  final String headin;

  @override
  Widget build(BuildContext context) {
    return Text(
      headin,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
