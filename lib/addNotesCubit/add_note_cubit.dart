import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app_second_try/models/noteModel.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note){

  }
}