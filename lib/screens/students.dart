// Import from project
import 'package:counter_one/models/main.dart';

import 'package:flutter/material.dart';

import 'student_edit.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({Key? key}) : super(key: key);

  @override
  State<StudentsPage> createState() => _StudentsPage();
}

class _StudentsPage extends State<StudentsPage> {
  List<StudentModel> studens = [];

  @override
  Widget build(BuildContext context) {
    print(studens);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: studens.length,
          itemBuilder: (
            BuildContext context,
            int i,
          ) {
            return Container(
              margin: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 3)],
              ),
              height: 40,
              child: Row(
                children: [
                  Text(studens[i].name),
                  Text(': ${studens[i].mark}'),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            var student = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => StudentFormPage(
                  student: StudentModel(),
                ),
              ),
            ) as StudentModel;

            print(student.name);
            setState(() {
              studens.add(student);
            });
          } catch (_) {}
        },
        child: const Icon(
          Icons.add_box_rounded,
          size: 24,
        ),
      ),
    );
  }
}
