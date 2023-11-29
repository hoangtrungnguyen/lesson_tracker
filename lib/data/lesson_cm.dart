import 'package:isar/isar.dart';

part 'lesson_cm.g.dart';

@collection
class LessonCM {
  Id? id;
  String name;
  String description;

  LessonCM({
    required this.name,
    required this.description,
  });
}