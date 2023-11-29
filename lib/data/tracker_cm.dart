import 'package:isar/isar.dart';
import 'package:lesson_tracker/data/lesson_cm.dart';

part 'tracker_cm.g.dart';

@collection
class TrackerCM {
  Id? id;

  DateTime startedTime;
  DateTime finishedTime;

  @Backlink(to: 'trackerCM')
  IsarLink<LessonCM> lesson = IsarLink<LessonCM>();

  TrackerCM({
    this.id,
    required this.startedTime,
    required this.finishedTime,
  });
}
