import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_test/models/note_model.dart';
import 'package:note_app_test/screens/note_page.dart';
import 'package:note_app_test/widgets/const.dart';

void main() async {
  await Hive.initFlutter();
// استدعاء الداتا بيز
  // ignore: unused_local_variable
  var box = await Hive.openBox(kNotesBOx);
  //قولتله ينشاء بوكس اسمه كذا
  Hive.registerAdapter(NoteModelAdapter());
// بعمل ريجيستر علشان اوصل للداتا عرفته انه بيتعامل مع Note Miodel
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
