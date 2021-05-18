import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context , taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskText: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (bool checkBoxState) {
                taskData.updateTask(task);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).taskCount
        );
      },
    );
  }
}

