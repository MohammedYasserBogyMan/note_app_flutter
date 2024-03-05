import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/custom_button.dart';
import 'package:note_app_test/widgets/custom_text_fileds.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(
            hint: 'Text',
          ),
          const Spacer(
            flex: 1,
          ),
          CustomTextField(
            hint: 'describtion',
          ),
          const Spacer(
            flex: 2,
          ),
          CustomButton(text: 'ADD'),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
