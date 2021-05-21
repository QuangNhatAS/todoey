import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(title: 'Go to the market'),
    Task(title: 'Buy a car'),
    Task(title: 'Eat more food'),
  ];

  int get taskCount {
    return tasks.length;
  }
}