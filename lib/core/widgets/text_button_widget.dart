import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final TextStyle? textStyle; // Yeni textStyle parametresi

  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textColor,
    this.textStyle, // textStyle parametresini constructor'a ekledik
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        text,
        style: textStyle ?? TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}
