import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key, this.iconColor, this.icon, this.iconSize, this.opicity});
  final Color? iconColor;
  final Icon? icon;
  final double? iconSize;
  final double? opicity;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      enableFeedback: false,
      style: ButtonStyle(
          shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
          backgroundColor: opicity == null
              ? WidgetStatePropertyAll(Colors.white.withOpacity(.15))
              : WidgetStatePropertyAll(Colors.white.withOpacity(opicity!))),
      color: iconColor ?? Colors.white,
      iconSize: iconSize ?? 32,
      onPressed: () {},
      icon: icon ?? const Icon(Icons.search),
    );
  }
}
