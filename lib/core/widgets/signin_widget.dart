import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: context.constMediumValue),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Ensure alignment to start
        children: [
          // Welcome Back
          Text(
            'Welcome Back 👋',
            style: TextStyle(
              fontSize: context.constMediumValue,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Sign to your account
          Container(
            alignment: Alignment.centerLeft, // Ensure alignment to the left
            child: Text(
              "Sign to your account",
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
