import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/custom_text_fileds.dart';

class EditBodyView extends StatelessWidget {
  const EditBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hint: 'Title',
        ),
        const SizedBox(
          height: 15,
        ),
        CustomTextField(
          maxLines: 5,
          hint: 'Describtion',
        ),
      ],
    );
  }
}
