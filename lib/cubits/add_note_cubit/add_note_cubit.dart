import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:znotes/constants.dart';
import 'package:znotes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    //try
    try {
      emit(AddNoteLoading());
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      emit(AddNoteSucess());
      await noteBox.add(note);

      //catch
    } catch (e) {
      //
      emit(AddNoteFailure(e.toString()));
    }
  }
}
