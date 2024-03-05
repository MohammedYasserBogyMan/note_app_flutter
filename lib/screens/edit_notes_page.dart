import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/custom_app_bar.dart';
import 'package:note_app_test/widgets/edit_view_body.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.edit_note,
            ),
            SizedBox(
              height: 40,
            ),
            EditBodyView(),
          ],
        ),
      ),
    );
  }
}
