//this file would help to communicate with local storage

import 'package:hive/hive.dart';

class TodosRepository {
  Future<void> getdata() async {
    var box = await Hive.openBox("MyTask");
    await box.get("MyTask");
    await box.close();
  }
}
