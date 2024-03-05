import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app_test/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Test',
              style: TextStyle(fontSize: 32),
            ),
            subtitle: const Text(
              'build your carere with tharwt samy',
              style: TextStyle(fontSize: 18),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.trash,
                size: 24,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: Text(
              'Mar4,2024',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
