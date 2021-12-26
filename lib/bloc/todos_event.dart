part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class TodosLoaded extends TodosEvent{}
class TodosAdded extends TodosEvent{}
class TodosUpdated extends TodosEvent{}
class TodosDeleted extends TodosEvent{}
class ClearCompleted extends TodosEvent{}
class ToggleAll extends TodosEvent{}