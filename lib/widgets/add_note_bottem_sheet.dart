import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/custom_button.dart';
import 'package:note_app_test/widgets/custom_text_fileds.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              maxLines: 5,
              hint: 'Describtion',
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(text: 'Add'),
          ],
        ),
      ),
    );
  }
}
