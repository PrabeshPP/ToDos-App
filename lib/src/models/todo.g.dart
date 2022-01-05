// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodosAdapter extends TypeAdapter<Todos> {
  @override
  final int typeId = 0;

  @override
  Todos read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Todos(
      id: fields[0] as String,
      title: fields[1] as String?,
      task: fields[2] as String,
      complete: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Todos obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.task)
      ..writeByte(3)
      ..write(obj.complete);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodosAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
