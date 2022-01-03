//this file would help to communicate with local storage



import 'package:hive/hive.dart';

class TodosRepository {
  Future<void> getData() async {
    var box = await Hive.openBox("MyTask");
    await box.get("MyTask");
    await box.close();
  }

  Future<void> writeData() async {
    var box = await Hive.openBox("MyTask");
    await box.put("hello", "world");
    await box.close();
  }

  Future<void> updateData()async{

  }
  Future<void> deleteData()async{

  }
}
