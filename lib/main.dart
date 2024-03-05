import 'package:flutter/material.dart';
import 'package:note_app_test/screens/note_page.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'AGENCYB',
      ),
      home: const NoteViwe(),
    );
  }
}
