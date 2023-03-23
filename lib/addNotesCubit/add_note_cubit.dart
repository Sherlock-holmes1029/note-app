import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_second_try/models/noteModel.dart';
import 'package:note_app_second_try/view/widgets/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note)async{
    emit(AddNoteLoading());
    try{
    var notesBox=Hive.box(kNotesBox);
    emit(AddNoteSuccess());
    await  notesBox.add(note);
    } catch (e){
    emit(AddNoteFailure(e.toString()));
    }
  }

}