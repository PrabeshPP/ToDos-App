part of 'todos_bloc.dart';

abstract class TodosState extends Equatable {
  const TodosState();
  
  @override
  List<Object> get props => [];
}

class TodosInitial extends TodosState {}
