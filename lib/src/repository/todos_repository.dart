import 'package:hive/hive.dart';
import 'package:todos/src/models/todo.dart';

class ToDosRepository {
  Future<Todos> loadData() async {
    final box = await Hive.openBox<Todos>("todos");
    final data = box.get("todos");
    return data!;
  }

  Future<void> deleteData() async {
    final box = await Hive.openBox("todos");
  }

  Future<void> updateData() async {
    final box = await Hive.openBox("todos");
  }

  Future<void> addData(
      {required final id,
      required final String task,
      final bool completed = false,
      final String title = ''}) async {
    final box = await Hive.openBox("todos");
    Todos todos = Todos(id: id, task: task, complete: completed, title: title);
    box.add(todos);
  }
}
