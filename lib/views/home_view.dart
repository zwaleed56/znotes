import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:znotes/widgets/custom_iconbutton.dart';
import 'package:znotes/widgets/notes_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: const [
            SizedBox(width: 16),
            CustomIconButton(),
          ],
          title: const Text(
            'Notes',
            style: TextStyle(fontSize: 25, fontFamily: 'Poppins'),
          ),
        ),
        // ignore: avoid_unnecessary_containers
        body: ListView.builder(itemBuilder: (context, index) => NotesItem()));
  }
}
