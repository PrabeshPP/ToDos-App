import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todos/src/homepage.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:todos/src/models/todo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(TodosAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
