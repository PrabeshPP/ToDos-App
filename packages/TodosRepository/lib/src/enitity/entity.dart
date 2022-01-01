import 'package:equatable/equatable.dart';

class TodoEntity extends Equatable {
 final String id;
  final bool complete;
  final String note;
  final String task;

  TodoEntity(this.id, this.complete, this.note, this.task);



  @override
  List<Object> get props => [];
}
