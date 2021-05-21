import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskTitle;
  AddTaskScreen({this.addTaskTitle});
  @override
  Widget build(BuildContext context) {
    String textInput;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
              ),
              TextField(
                autofocus: true,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
                onChanged: (value) {
                  textInput = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Add',
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.lightBlue,
                textColor: Colors.white,
                onPressed: () {
                  addTaskTitle(textInput);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
