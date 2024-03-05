// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app_test/models/note_model.dart';
import 'package:note_app_test/widgets/const.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box(kNotesBOx);
      emit(AddNoteSuccess());
      await notesBox.add(note.title);
    } catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
