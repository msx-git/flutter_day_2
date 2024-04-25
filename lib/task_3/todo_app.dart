import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_2/task_3/widgets/page_1.dart';
import 'package:flutter_day_2/task_3/widgets/page_2.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Todo UI'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
