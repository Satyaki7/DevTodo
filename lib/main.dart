import 'package:devtodo/features/ai_chat/screens/ai_chat.dart';
import 'package:devtodo/features/project/screens/project_screen.dart';
import 'package:devtodo/features/todo/screens/todo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: ProjectsScreen(),
      routes: {
        '/homepage': (context) => ProjectsScreen(),
        '/ai': (context) => AiChat(),
        '/todo': (context) => Todo(),
      },
    );
  }
}
