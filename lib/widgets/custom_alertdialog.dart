import 'package:flutter/material.dart';
import 'package:znotes/widgets/custom_textField.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const CustomTextField(),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ButtonStyle(
                    enableFeedback: false,
                    fixedSize: WidgetStatePropertyAll(
                        Size(MediaQuery.of(context).size.width, 12)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.amber),
                    foregroundColor:
                        const WidgetStatePropertyAll(Colors.black)),
                child: const Text('search',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
      title: const Text(
        'Search',
        textAlign: TextAlign.center,
      ),
    );
  }
}