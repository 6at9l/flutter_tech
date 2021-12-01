import 'package:counter_one/components/separator.dart';
import 'package:counter_one/models/main.dart';
import 'package:flutter/material.dart';

class StudentFormPage extends StatefulWidget {
  final StudentModel student;

  const StudentFormPage({
    Key? key,
    required this.student,
  }) : super(key: key);

  @override
  State<StudentFormPage> createState() => _StudentFormPage();
}

class _StudentFormPage extends State<StudentFormPage> {
  String name = '';
  int mark = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.close),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: Offset.zero,
              blurRadius: 2,
              spreadRadius: 3.0,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              initialValue: name,
              onChanged: (_) => setState(() {
                print(_);
                name = _;
              }),
            ),
            const Separator(),
            TextFormField(
              initialValue: '$mark',
              onChanged: (_) => setState(() {
                mark = int.parse(_);
              }),
            ),
            const Separator(),
            MaterialButton(
              child: Text('Save'),
              onPressed: () {
                Navigator.of(context).pop(
                  StudentModel(
                    mark: mark,
                    name: name,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
