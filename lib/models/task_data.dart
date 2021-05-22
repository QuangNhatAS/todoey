import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }
  void isCheckedData(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void addTask(String taskTitle){
    final task = Task(title: taskTitle);
    tasks.add(task);
    notifyListeners();
  }
  void removeTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}