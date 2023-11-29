import 'package:flutter/material.dart';
import 'package:lesson_tracker/domain/impl_lesson_repository.dart';
import 'package:lesson_tracker/domain/models.dart';
import 'package:lesson_tracker/features/create_lesson.dart';

class ListLesson extends StatelessWidget {
  const ListLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CHÀO BUỔI SÁNG"),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const CreateLesson();
            }));
          }, child: const Icon(Icons.edit_note)),
      body: StreamBuilder<List<Lesson>>(
        stream: lessonRepository.watchAll(),
        builder: (BuildContext context, AsyncSnapshot<List<Lesson>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Text("Loading..."));
          }
          return ListView(
            children: snapshot.data
                    ?.map((e) => Card(
                          child: ListTile(
                            leading: const Icon(Icons.person),
                            title: Text(e.name),
                            subtitle: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(e.description,textAlign: TextAlign.start,),
                              ],
                            ),
                          ),
                        ))
                    .toList() ??
                [],
          );
        },
      ),
    );
  }
}
