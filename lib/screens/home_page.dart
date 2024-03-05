import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesViewBody(),
    );
  }
}
