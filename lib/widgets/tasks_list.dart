import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/tasks.dart';

class TasksList extends StatefulWidget {
  final List<Task> list;
  TasksList({this.list});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskText: widget.list[index].name,
          isChecked: widget.list[index].isDone,
          checkBoxCallBack: (bool checkBoxState) {
            setState(() {
              widget.list[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.list.length,
    );
  }
}

