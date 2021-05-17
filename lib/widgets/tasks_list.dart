import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/tasks.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name:  'Buy Milk'),
    Task(name: 'Do Chores'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Code the app')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget> [
        TaskTile(taskText: tasks[0].name, isChecked: tasks[0].isDone,),
        TaskTile(taskText: tasks[1].name, isChecked: tasks[1].isDone,),
        TaskTile(taskText: tasks[2].name, isChecked: tasks[2].isDone,),
        TaskTile(taskText: tasks[3].name, isChecked: tasks[3].isDone,)
      ],
    );
  }
}
