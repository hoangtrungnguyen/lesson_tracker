import 'package:lesson_tracker/domain/models.dart';

abstract interface class TrackerRepository {

  Future<void> createTracker(DateTime startedTime, DateTime finishedTime);

  Future<void> updateTracker(Tracker tracker);

  Future<Tracker> getTracker(int id);

  Future<List<Tracker>> getTrackerByLesson(Lesson lesson);
}