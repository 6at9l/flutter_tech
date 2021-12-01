// Import from project
import 'package:counter_one/models/main.dart';

import 'package:flutter/material.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({Key? key}) : super(key: key);

  @override
  State<StudentsPage> createState() => _StudentsPage();
}

class _StudentsPage extends State<StudentsPage> {
  List<StudentModel> studens = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var s = await Navigator.of(context).pushNamed(
            '/student/crud',
            arguments: StudentModel(name: 'Old name', mark: 0),
          ) as StudentModel;

          print(s.name);
        },
        child: const Icon(
          Icons.add_box_rounded,
          size: 24,
        ),
      ),
    );
  }
}
