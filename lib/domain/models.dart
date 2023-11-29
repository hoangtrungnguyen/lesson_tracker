import 'package:lesson_tracker/domain/lesson_repository.dart';

class Lesson {
  int? id;
  String name;
  String description;

  Lesson({
    this.id,
    required this.name,
    required this.description,
  });
}

class Tracker {
  int? id;
  DateTime started;
  DateTime finished;

  Tracker({
    this.id,
    required this.started,
    required this.finished,
  });
}