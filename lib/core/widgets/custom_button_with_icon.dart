import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final Color buttonBgColor;
  final Color buttonTextColor;
  final VoidCallback onPressed;
  const CustomButtonWithIcon({
    super.key,
    required this.buttonBgColor,
    required this.buttonTextColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.highValue / 1.5,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              backgroundColor: buttonBgColor,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(30))),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/google_logo.png',
                width: context.mediumValue * 1.1,
                height: context.mediumValue * 1.1,
              ),
              SizedBox(
                width: context.lowValue,
              ),
              Text(
                "Sign in with Google",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: buttonTextColor,
                  fontSize: 25,
                ),
              ),
            ],
          )),
    );
  }
}
