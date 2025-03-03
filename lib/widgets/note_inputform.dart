import 'package:flutter/material.dart';
import 'package:znotes/widgets/custom_textField.dart';

class NoteInputFrom extends StatefulWidget {
  const NoteInputFrom({
    super.key,
  });

  @override
  State<NoteInputFrom> createState() => _NoteInputFromState();
}

class _NoteInputFromState extends State<NoteInputFrom> {
  String? title, content;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidate = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidate,
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    style: const ButtonStyle(enableFeedback: false),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
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
            CustomTextField(
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'This field is required';
                } else {
                  return null;
                }
              },
              hintText: 'Title',
            ),
            const SizedBox(height: 20),
            CustomTextField(
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'This field is required';
                  } else {
                    return null;
                  }
                },
                hintText: 'Content',
                maxLines: 8),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ButtonStyle(
                    enableFeedback: false,
                    fixedSize: WidgetStatePropertyAll(
                        Size(MediaQuery.of(context).size.width, 12)),
                    backgroundColor:
                        const WidgetStatePropertyAll(Colors.amber),
                    foregroundColor:
                        const WidgetStatePropertyAll(Colors.black)),
                child: const Text('Add',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autoValidate = AutovalidateMode.always;
                    setState(() {});
                  }
                })
          ],
        ),
      ),
    );
  }
}
