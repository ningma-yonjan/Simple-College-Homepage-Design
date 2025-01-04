class Event {
  final String name;
  final String description;
  final DateTime date;
  Event({
    required this.name,
    required this.description,
    required this.date,
  });
}

List<Event> e = [
  Event(name: "ningma", description: "This is ningma", date: DateTime.now()),
  Event(name: "ningma", description: "This is ningma", date: DateTime.now()),
  Event(name: "ningma", description: "This is ningma", date: DateTime.now()),
  Event(name: "ningma", description: "This is ningma", date: DateTime.now()),
  Event(name: "ningma", description: "This is ningma", date: DateTime.now()),
];
