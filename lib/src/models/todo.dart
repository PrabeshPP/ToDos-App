import 'package:hive/hive.dart';

part 'todo.g.dart';
@HiveType(typeId:0)
class Todos {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String task;
  @HiveField(3)
  final bool complete;

  Todos({
    required this.id,
     this.title,
     required  this.task,
     required  this.complete});

}
