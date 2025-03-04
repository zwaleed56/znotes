import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:znotes/constants.dart';
import 'package:znotes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:znotes/models/note_model.dart';
import 'package:znotes/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  Hive.openBox(kNoteBox);
  runApp(const Znotes());
}

class Znotes extends StatelessWidget {
  const Znotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            fontFamily: 'Poppins',
            brightness: Brightness.dark),
        home: const NotesView(),
      ),
    );
  }
}
