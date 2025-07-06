import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/notes_cubit/notes_cubit.dart';
import '../../data/models/note_model.dart';

class NoteDialog extends StatefulWidget {
  final NoteModel? note;

  const NoteDialog({super.key, this.note});

  @override
  State<NoteDialog> createState() => _NoteDialogState();
}

class _NoteDialogState extends State<NoteDialog> {
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      _textController.text = widget.note!.text;
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.note == null ? 'Add Note' : 'Edit Note'),
      content: TextField(
        controller: _textController,
        decoration: const InputDecoration(
          hintText: 'Enter your note...',
          border: OutlineInputBorder(),
        ),
        maxLines: 5,
        autofocus: true,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            final text = _textController.text.trim();
            if (text.isNotEmpty) {
              if (widget.note == null) {
                context.read<NotesCubit>().addNote(text);
              } else {
                context.read<NotesCubit>().updateNote(widget.note!.id, text);
              }
              Navigator.pop(context);
            }
          },
          child: Text(widget.note == null ? 'Add' : 'Update'),
        ),
      ],
    );
  }
}