import 'package:flutter/material.dart';
import 'package:lesson_tracker/data/isar_storage.dart';
import 'package:lesson_tracker/domain/impl_lesson_repository.dart';
import 'package:lesson_tracker/features/list_lesson.dart';

Future<void> main() async {
  isarStorage = IsarStorage();
  await isarStorage.initialize();
  lessonRepository = ImplLessonRepository(isarStorage: isarStorage);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ).copyWith(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2))
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16)
        )
      ),
      home: const ListLesson(),
    );
  }
}

