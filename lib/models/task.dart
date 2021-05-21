class Task{

  Task({this.title, this.isDone = false});
  String title;
  bool isDone;

  void toggleDone(){
    isDone = ! isDone;
  }
}