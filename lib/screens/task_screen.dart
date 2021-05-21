import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/task_list.dart';
import 'add_task_screen.dart';
import '../models/task_data.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlue,
                  ),
                  radius: 25.0,
                  backgroundColor: Colors.white,
                ),
                Text('Todoey',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Task',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: TaskList(),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(
                    addTaskTitle: (newText) {
                      // setState(() {
                      //   Provider.of<TaskData>(context).tasks.add(Task(title: newText));
                      // });
                      Navigator.pop(context);
                    },
                  ));
        },
      ),
    );
  }
}
