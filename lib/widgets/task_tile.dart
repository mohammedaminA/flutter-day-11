import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskText;

  TaskTile({this.isChecked, this.taskText});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskText, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        // onChanged: toggleCheckBoxState,
      )
    );
  }
}

// (bool checkBoxState) {
// setState(() {
// isChecked = checkBoxState;
// });


