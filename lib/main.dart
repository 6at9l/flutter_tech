import 'package:flutter/material.dart';
import './screens/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Student',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/studens',
      routes: {
        '/studens': (_) => const StudentsPage(),
        '/student/crud': (_) => const StudentFormPage(),
      },
    );
  }
}
