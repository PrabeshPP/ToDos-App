// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoEntityAdapter extends TypeAdapter<TodoEntity> {
  @override
  final int typeId = 0;

  @override
  TodoEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoEntity(
      id: fields[0] as String,
      complete: fields[1] as bool,
      note: fields[2] as String,
      task: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TodoEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.complete)
      ..writeByte(2)
      ..write(obj.note)
      ..writeByte(3)
      ..write(obj.task);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
