//this file would help to communicate with local storage

import 'package:hive/hive.dart';

class TodosRepository {
  Future<void> loaddata() async {
    var box = await Hive.openBox("MyTask");
    await box.put("hello", "world");
    await box.close();
  }
}
