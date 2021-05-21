import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) => TaskTile(
          textTitle: taskData.tasks[index].title,
          isChecked: taskData.tasks[index].isDone,
          onCheckboxChange: (checkboxState) {
            // setState(() {
            //   widget.tasks[index].toggleDone();
            // });
          },
        ),
        itemCount: taskData.taskCount,
      ),
    );
  }
}
