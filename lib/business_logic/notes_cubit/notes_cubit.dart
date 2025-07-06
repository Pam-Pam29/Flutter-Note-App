import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/notes_repository.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  final NotesRepository notesRepository;

  NotesCubit({required this.notesRepository}) : super(NotesInitial());

  Future<void> fetchNotes() async {
    emit(NotesLoading());
    try {
      final notes = await notesRepository.fetchNotes();
      emit(NotesLoaded(notes));
    } catch (e) {
      emit(NotesError(e.toString()));
    }
  }

  Future<void> addNote(String text) async {
    try {
      await notesRepository.addNote(text);
      emit(NotesSuccess('Note added successfully'));
      fetchNotes(); // Refresh the list
    } catch (e) {
      emit(NotesError(e.toString()));
    }
  }

  Future<void> updateNote(String id, String text) async {
    try {
      await notesRepository.updateNote(id, text);
      emit(NotesSuccess('Note updated successfully'));
      fetchNotes(); // Refresh the list
    } catch (e) {
      emit(NotesError(e.toString()));
    }
  }

  Future<void> deleteNote(String id) async {
    try {
      await notesRepository.deleteNote(id);
      emit(NotesSuccess('Note deleted successfully'));
      fetchNotes(); // Refresh the list
    } catch (e) {
      emit(NotesError(e.toString()));
    }
  }
}