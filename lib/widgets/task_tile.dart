import 'package:flutter/material.dart';
import 'task_checkbox.dart';



class TaskTile extends StatelessWidget {
  final String text;

  const TaskTile({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
      ),
      trailing: TaskCheckBox(),
    );
  }
}


