import 'package:flutter/material.dart';
import 'package:note_app_test/widgets/custom_searche_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Note',
          style: TextStyle(fontSize: 55),
        ),
        Spacer(
          flex: 1,
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
