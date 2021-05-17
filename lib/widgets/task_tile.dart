import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskText;
  final Function checkBoxCallBack;

  TaskTile({this.isChecked, this.taskText, this.checkBoxCallBack});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskText, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      )
    );
  }
}

// (bool checkBoxState) {
// setState(() {
// isChecked = checkBoxState;
// });


