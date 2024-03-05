import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_test/cubits/add_note_cubit/add_note_cubit.dart';
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
    // الخطوه الرابعه حطيت البروفايدر بتاعي علشان يبقا واصل لكل الملفات الي عندي
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'AGENCYB',
        ),
        home: const NoteViwe(),
      ),
    );
  }
}
