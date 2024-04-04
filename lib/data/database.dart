import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');

  //run this method if this the 1st time opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do exercise", false],
    ];
  }

  //load the data fron db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
