import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      [
        "Press + to Add",
        false,
      ],
      [
        "Slide Left to Delete",
        false,
      ]
    ];
  }

  void loadData() {
    toDoList = _myBox.get('toDoList');
  }

  void updateDataBase() {
    _myBox.put('toDoList', toDoList);
  }
}
