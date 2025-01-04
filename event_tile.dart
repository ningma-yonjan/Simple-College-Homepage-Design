import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.blue[200],
      title: Text("Event name"),
      subtitle: Text("Event Description"),
      onTap: () {},
    );
  }
}
