import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];
  final _myBox = Hive.box('mybox');
  void createInitialData() {
    [];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updateData() {
    _myBox.put('TODOLIST', todoList);
  }
}
