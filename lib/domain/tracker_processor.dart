import 'package:isar/isar.dart';
import 'package:lesson_tracker/data/lesson_cm.dart';
import 'package:lesson_tracker/data/tracker_cm.dart';
import 'package:lesson_tracker/domain/models.dart';
import 'package:lesson_tracker/domain/tracker_repository.dart';

abstract mixin class MixinTrackerProcessor implements TrackerRepository {
  Isar get isar;

  @override
  Future<void> updateTracker(Tracker tracker) async {
    // TODO: implement createTracker
    throw UnimplementedError();
  }

  @override
  Future<void> createTracker(
      DateTime startedTime, DateTime finishedTime) async {
    await isar.writeTxn(() async {
      await isar.trackerCMs
          .put(TrackerCM(startedTime: startedTime, finishedTime: finishedTime));
    });
  }

  @override
  Future<List<Tracker>> getTrackerByLesson(Lesson lesson) async {
    try {
      final trackerCMs = await isar.trackerCMs
          .filter()
          .lesson((q) => q.idEqualTo(lesson.id))
          .findAll();
      return trackerCMs
          .map((e) => Tracker(started: e.startedTime, finished: e.finishedTime))
          .toList();
    } catch (e) {
      throw Exception("GetTracker failure");
    }
  }

  @override
  Future<Tracker> getTracker(int id) async {
    try {
      final trackerCM = (await isar.trackerCMs.get(id))!;
      return Tracker(
          started: trackerCM.startedTime, finished: trackerCM.finishedTime);
    } catch (e) {
      throw Exception("GetTracker failure");
    }
  }
}
