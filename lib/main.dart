import 'package:flutter/material.dart';
import 'package:mytodo/taskdata.dart';
import 'Task_Screen.dart';
import 'package:provider/provider.dart';
import 'package:mytodo/tasks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Task> tasks = [
    Task(name: 'buy milk', Isdone: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Taskdata(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
