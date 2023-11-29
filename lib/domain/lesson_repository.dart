import 'package:lesson_tracker/domain/models.dart';
import 'package:lesson_tracker/domain/tracker_repository.dart';

abstract interface class LessonRepository implements TrackerRepository{
  Future<int> create(Lesson lesson);

  void delete(int lessonId);

  Future<void> update(Lesson lesson);

  Future<Lesson> get(int lessonId);

  Stream<List<Lesson>> watchAll();

  Future<bool> isNew(Lesson lesson);
}