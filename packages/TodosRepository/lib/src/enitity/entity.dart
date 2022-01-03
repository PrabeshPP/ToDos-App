import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part 'entity.g.dart';
@HiveType(typeId: 0)
class TodoEntity extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final bool complete;
  @HiveField(2)
  final String note;
  @HiveField(3)
  final String task;
  
  const TodoEntity(
      {required this.id,
      required this.complete,
      required this.note,
      required this.task});

  Map<String, Object> toJson() =>
      {"complete": complete, "id": id, "note": note, "task": task};
  static TodoEntity fromJson(Map<String, Object> json) => TodoEntity(
      task: json['task'] as String,
      complete: json['complete'] as bool,
      id: json['id'] as String,
      note: json['note'] as String);

  @override
  List<Object> get props => [id, task, complete, note];
  @override
  String toString() =>
      "TodoEntity{Complete:$complete,task:$task,note:$note,id:$id}";
}
