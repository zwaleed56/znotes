import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:znotes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:znotes/widgets/note_inputform.dart';

class ShowModalBottomSheetBody extends StatelessWidget {
  const ShowModalBottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSucess) {
          log('Sucess');
          Navigator.of(context).pop();
        } else if (state is AddNoteFailure) {
          log('failed ${state.errMessage}');
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: const NoteInputFrom());
      },
    );
  }
}
