import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class SigninAndSignupTextWidget extends StatelessWidget {
  final String headerText;
  final String text;
  const SigninAndSignupTextWidget({
    super.key,
    required this.headerText, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: context.constMediumValue, top: context.mediumValue),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Ensure alignment to start
        children: [
          // Welcome Back
          Text(
            headerText,
            style: TextStyle(
              fontSize: context.constMediumValue,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Sign to your account
          Container(
            alignment: Alignment.centerLeft, // Ensure alignment to the left
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: context.constMediumValue / 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
