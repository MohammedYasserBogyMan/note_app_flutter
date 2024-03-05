// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, required this.hint, this.onSaved, this.maxLines = 1});

  final String hint;
  final int maxLines;
  void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: Colors.white,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'Filed is required';
        }
      },
      decoration: InputDecoration(
        focusedBorder: buildBordeerDecoration(),
        errorBorder: buildBordeerDecoration(),
        enabledBorder: buildBordeerDecoration(color: Colors.blue),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),
      onSaved: onSaved,
    );
  }

  OutlineInputBorder buildBordeerDecoration({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
