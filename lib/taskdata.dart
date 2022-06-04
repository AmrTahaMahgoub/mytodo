import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:mytodo/tasks.dart';

class Taskdata extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk', Isdone: false),
    Task(name: 'Go to gym', Isdone: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskcount {
    return _tasks.length;
  }

  int tasklength() {
    return tasks.length;
  }

  void addtasks(String newtask) {
    Task task = Task(name: newtask);
    _tasks.add(task);
    notifyListeners();
  }

  void updatetask(Task task) {
    task.changecheckedvalue();
    notifyListeners();
  }

  void onlongtouch(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
