import 'package:flutter/material.dart';
import 'package:list_view/screens/note_details.dart';
import 'package:list_view/screens/note_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note keeper',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: NoteDetails(),
    );
  }
}
