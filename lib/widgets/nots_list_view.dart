import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const NoteItem();
      },
    );
  }
}
