import 'package:equatable/equatable.dart';

class TodoEntity extends Equatable {
  final String id;
  final bool complete;
  final String note;
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
