import 'package:flutter/foundation.dart';
import 'package:todoey/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy some Bread'),
    Task(name: 'Hit the gym'),
    Task(name: 'Code a bit')
  ];

  int get taskCount {
    return tasks.length;
  }
  void addTask(String newTaskTitle) {
    final task = new Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}