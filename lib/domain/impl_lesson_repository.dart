import 'package:isar/isar.dart';
import 'package:lesson_tracker/data/isar_storage.dart';
import 'package:lesson_tracker/data/lesson_cm.dart';
import 'package:lesson_tracker/data/tracker_cm.dart';
import 'package:lesson_tracker/domain/lesson_repository.dart';
import 'package:lesson_tracker/domain/models.dart';
import 'package:lesson_tracker/domain/tracker_processor.dart';

late final ImplLessonRepository lessonRepository;

class ImplLessonRepository with MixinTrackerProcessor implements LessonRepository  {

  final IsarStorage isarStorage;

  ImplLessonRepository({
    required this.isarStorage,
  });

  @override
  Isar get isar => isarStorage.isar;

  @override
  Future<int> create(Lesson lesson) async {
    int id = -1;
    await isar.writeTxn(() async {
      id = await isar.lessonCMs
          .put(LessonCM(name: lesson.name, description: lesson.description));
    });
    return id;
  }

  @override
  void delete(int lessonId) {
    isar.writeTxnSync(() {
      isar.lessonCMs.deleteSync(lessonId);
    });
  }

  @override
  Future<Lesson> get(int lessonId) async {
    try {
      final lessonCM = (await isar.lessonCMs.get(lessonId))!;
      return Lesson(
          id: lessonCM.id!,
          name: lessonCM.name,
          description: lessonCM.description);
    } catch (e) {
      throw Exception("not found with $lessonId");
    }
  }

  @override
  Future<void> update(Lesson lesson) async {
    try {
      await isar.writeTxn(() async {
        isar.lessonCMs
            .put(LessonCM(name: lesson.name, description: lesson.description));
      });
    } catch (e) {
      throw Exception("exception while updating");
    }
  }

  @override
  Stream<List<Lesson>> watchAll() {
    return isar.lessonCMs.watchLazy(fireImmediately: true).asyncMap(
        (event) async => isar.lessonCMs.where().findAll().then((value) => value
            .map((e) => Lesson(
                id: e.id ?? -1, description: e.description, name: e.name))
            .toList()));
  }

  @override
  Future<bool> isNew(Lesson lesson) async {
    return (await isar.trackerCMs
        .filter()
        .lesson((q) => q.idEqualTo(lesson.id))
        .count()) == 0;
  }
}
