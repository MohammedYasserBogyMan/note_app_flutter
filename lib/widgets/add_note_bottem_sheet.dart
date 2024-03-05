// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/custom_button.dart';
import 'package:note_app_test/widgets/custom_text_fileds.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: addNoteForm(),
      ),
    );
  }
}

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteDataState();
}

class _addNoteDataState extends State<addNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
// that key to form (للتحكم في حاله الفورم اكثر من حاله )
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  // to shwo error to user if value is false (لو عايز الايميل او ارقام بس وغيره )

  String? title, desc;
//(طول ما هي فيها متغيرات المفروض تكون ستيت فول واجهه )

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (value) {
              desc = value;
            },
            maxLines: 5,
            hint: 'Describtion',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'Add',
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else
                () {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                };
            },
          ),
        ],
      ),
    );
  }
}
