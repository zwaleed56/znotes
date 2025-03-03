import 'package:flutter/material.dart';
import 'package:znotes/widgets/notes_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => const NotesItem()),
        )
      ],
    );
  }
}