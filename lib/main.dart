import 'package:flutter/material.dart';
import 'project_4/course_detail_screen.dart';

void main() {
  runApp(const MultiApp());
}

class MultiApp extends StatelessWidget {
  const MultiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CourseDetailScreen(),
    );
  }
}