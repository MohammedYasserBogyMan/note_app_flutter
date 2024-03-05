import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/add_note_bottem_sheet.dart';
import 'package:note_app_test/widgets/notes_view_body.dart';

class NoteViwe extends StatelessWidget {
  const NoteViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottemSheet();
              });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
