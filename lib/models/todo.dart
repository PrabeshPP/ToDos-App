import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Todo extends Equatable {
  final String id;
  final bool complete;
  final String note;
  final String task;

  Todo(
    this.task, {
    String? id,
    this.complete = false,
    String? note,
  })  : id = id ?? const Uuid().v4(),
        note = note ?? '';

  Todo copyWith({bool? complete, String? id, String? task, String? note}) {
    return Todo(task ?? this.task,
        id: id ?? this.id,
        complete: complete ?? this.complete,
        note: note ?? this.note);
  }

  @override
  List<Object?> get props => [id, complete, note];

  @override
  String toString() => 'Todo{complete:$complete,task:$task,note:$note,id:$id}';

  

}
