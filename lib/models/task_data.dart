import 'package:flutter/foundation.dart';
import 'package:todoey/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
  ];

  int get taskCount {
    return _tasks.length;
  }
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  List<Task> get tasks {
    return _tasks;
  }
}