import 'package:flutter/material.dart';
import 'package:lesson_tracker/domain/impl_lesson_repository.dart';
import 'package:lesson_tracker/domain/models.dart';

class CreateLesson extends StatefulWidget {
  const CreateLesson({super.key});

  @override
  State<CreateLesson> createState() => _CreateLessonState();
}

class _CreateLessonState extends State<CreateLesson> {
  late TextEditingController classController;
  late TextEditingController lessonController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    classController = TextEditingController();
    lessonController = TextEditingController();
    descriptionController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHÀO BUỔI SÁNG"),
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: classController,
                  decoration: InputDecoration(
                      label: Text(
                        "CHỌN LỚP HỌC",
                        textAlign: TextAlign.start,
                      ),
                      suffix: Icon(Icons.arrow_drop_down)),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: lessonController,
                  decoration: InputDecoration(
                    label: Text(
                      "TÊN BÀI HỌC",
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: descriptionController,
                  maxLines: 12,
                  decoration: InputDecoration(
                    label: Text(
                      "MÔ TẢ BÀI HỌC",
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TrackerPickerGroup(),
              ),
              Spacer(),
              FilledButton(
                  onPressed: () async {
                    await lessonRepository.create(Lesson(
                      name: lessonController.value.text,
                      description: descriptionController.value.text,
                    ));

                    Navigator.pop(context);
                  },
                  child: const Text("Tạo buổi học"))
            ],
          ),
        ),
      ),
    );
  }
}

class TrackerPickerGroup extends StatelessWidget {
  const TrackerPickerGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: TextField(
            readOnly: true,
            onTap: () {
              showDatePicker(
                  context: context,
                  firstDate: DateTime.utc(2023),
                  lastDate: DateTime.now());
            },
            decoration: InputDecoration(
              label: Text(
                "THỜI GIAN BẮT ĐẦU",
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          child: TextField(
            readOnly: true,
            onTap: () {
              showDatePicker(
                  context: context,
                  firstDate: DateTime.utc(2023),
                  lastDate: DateTime.now());
            },
            decoration: InputDecoration(
              label: Text(
                "THỜI GIAN KẾT THÚC",
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
