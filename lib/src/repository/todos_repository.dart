import 'package:hive/hive.dart';

class ToDosRepository {
  Future<void> loadData() async {
    final box = await Hive.openBox("ToDos");
    
  }

  Future<void> deleteData() async {}

  Future<void> updateData() async {}
}
