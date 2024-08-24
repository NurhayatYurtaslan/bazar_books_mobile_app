import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class TitleAndDescriptionWidget extends StatelessWidget {
  final String headerText;
  final String text;
  const TitleAndDescriptionWidget({
    super.key,
    required this.headerText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headerText,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: context.lowValue,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey.shade500),
        ),
      ],
    );
  }
}
