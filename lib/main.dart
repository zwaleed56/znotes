import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:znotes/constants.dart';
import 'package:znotes/models/note_model.dart';

import 'package:znotes/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  
  Hive.openBox(kNoteBox);
  runApp(const Znotes());
}

class Znotes extends StatelessWidget {
  const Znotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          fontFamily: 'Poppins',
          brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
