import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget> [
        TaskTile(),
        TaskTile(),
        TaskTile()
      ],
    );
  }
}
