part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class TodosLoaded extends TodosEvent {}

class TodosAdded extends TodosEvent {
  final Todo todo;

  const TodosAdded({required this.todo});

  @override
  List<Object> get props => [todo];

  @override
  String toString() => "TodoAdded {todo:$todo}";
}

class TodosUpdated extends TodosEvent {
  final Todo todo;

  const TodosUpdated({required this.todo});

  @override
  List<Object> get props => [todo];

  @override
  String toString() => "TodoUpdated{todo:$todo}";
}

class TodosDeleted extends TodosEvent {
  final Todo todo;

  const TodosDeleted({required this.todo});

  @override
  List<Object> get props => [todo];

  @override
  String toString() => "TodoDeleted {todo:$todo}";
}

class ClearCompleted extends TodosEvent {}

class ToggleAll extends TodosEvent {}
