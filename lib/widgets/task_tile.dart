import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {
  final String textTitle;
  final bool isChecked;
  final Function onCheckboxChange;

  const TaskTile({Key key, this.textTitle, this.isChecked, this.onCheckboxChange}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        textTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
      value: isChecked,
      onChanged: (newValue){
        onCheckboxChange(newValue);
      },
    )
    );
  }
}


