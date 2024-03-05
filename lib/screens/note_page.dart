import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/notes_view_body.dart';

class NoteViwe extends StatelessWidget {
  const NoteViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
