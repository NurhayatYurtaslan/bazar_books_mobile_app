import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color buttonBgColor;
  final Color buttonTextColor;
  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      required this.buttonBgColor,
      required this.buttonTextColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sizedHButton.height,
      width: context.sizedWButton.width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: buttonBgColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            buttonText,
            style: TextStyle(color: buttonTextColor, fontSize: 18),
          )),
    );
  }
}
