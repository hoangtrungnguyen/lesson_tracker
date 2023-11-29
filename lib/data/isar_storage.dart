import 'dart:io';

import 'package:isar/isar.dart';
import 'package:lesson_tracker/data/lesson_cm.dart';
import 'package:lesson_tracker/data/tracker_cm.dart';
import 'package:path_provider/path_provider.dart';


late IsarStorage isarStorage;

class IsarStorage {
  ///
  IsarStorage({
    Isar? isar,
  }) {
    if (isar != null) {
      _isar = isar;
    }
  }

  /// {@macro isar_cache_storage}

  late Isar _isar;

  Isar get isar => _isar;

  Future<void> initialize() async {
    final directory = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
    _isar = await Isar.open([
      LessonCMSchema,
      TrackerCMSchema
    ], directory: directory!.path);
  }

}