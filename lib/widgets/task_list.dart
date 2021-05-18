import 'package:flutter/material.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(text: 'Go to the gym',),
        TaskTile(text: 'Cooking dinner',),
        TaskTile(text: 'Go to the zoo',),
      ],
    );
  }
}