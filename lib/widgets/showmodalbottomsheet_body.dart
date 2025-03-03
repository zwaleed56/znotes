import 'package:flutter/material.dart';
import 'package:znotes/widgets/custom_textfield.dart';

class ShowModalBottomSheetBody extends StatelessWidget {
  const ShowModalBottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text('Cancel',
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
              SizedBox(
                width: MediaQuery.of(context).size.width / 10,
              ),
              const Text(
                'Edit Note',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const CustomTextField(
            hintText: 'Title',
          ),
          const SizedBox(height: 20),
          const CustomTextField(hintText: 'Content', maxLines: 8),
          const SizedBox(height: 20),
          ElevatedButton(
              style: ButtonStyle(
                  enableFeedback: false,
                  fixedSize: WidgetStatePropertyAll(
                      Size(MediaQuery.of(context).size.width, 12)),
                  backgroundColor: const WidgetStatePropertyAll(Colors.amber),
                  foregroundColor: const WidgetStatePropertyAll(Colors.black)),
              child: const Text('Add',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              onPressed: () {})
        ],
      ),
    );
  }
}
