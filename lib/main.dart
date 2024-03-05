import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app_test/screens/note_page.dart';
import 'package:note_app_test/widgets/const.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNotesBOx);

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
