import 'package:hive_flutter/hive_flutter.dart';

class toDoDatabase {
  List toDolists = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    toDolists = [
      ['make ne', false],
      ['hello ', false]
    ];
  }

  void loadData() {
    toDolists = _mybox.get('TODOLIST');
  }

  void updateData() {
    _mybox.put('TODOLIST', toDolists);
  }
}
