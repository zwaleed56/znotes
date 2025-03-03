import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.hintText,
    this.maxLines,
    super.key,
  });
  final String? hintText;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(.15),
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Colors.white, width: 2.5)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Colors.amber, width: 2.5)),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
    );
  }
}
