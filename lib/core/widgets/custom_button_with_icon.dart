import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(
              'assets/icons/google_logo.png',
              width: context.highValue,
              height: context.highValue,
            ),
            const Text("Sign in with Google"),
          ],
        ));
  }
}
