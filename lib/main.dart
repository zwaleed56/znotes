import 'package:flutter/material.dart';

import 'package:znotes/views/home_view.dart';

void main() {
  runApp(const Znotes());
}

class Znotes extends StatelessWidget {
  const Znotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
