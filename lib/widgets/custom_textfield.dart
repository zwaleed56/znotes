import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.maxLines,
    this.validator,
    this.onSaved,
  });
  final String? hintText;
  final int? maxLines;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      validator: validator,
      onSaved: onSaved,
      maxLines: 1,
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
