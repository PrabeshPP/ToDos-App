//this file would help to communicate with local storage

import 'package:hive/hive.dart';

import 'enitity/entity.dart';

class TodosRepository {
 
  
  Future<void> getData() async {
    Hive.registerAdapter(TodoEntityAdapter());
    var box = await Hive.openBox<TodoEntity>("MyTask");
    box.get("MyTask");
    await box.close();
  }

  Future<void> addData() async {
    Hive.registerAdapter(TodoEntityAdapter());
    var box = await Hive.openBox("MyTask");
    await box.put("hello", "world");
    await box.close();
  }

  Future<void> updateData() async {
    Hive.registerAdapter(TodoEntityAdapter());
  }

  Future<void> deleteData() async {
    Hive.registerAdapter(TodoEntityAdapter());
  }
}
