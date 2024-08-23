import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInput extends StatelessWidget {
  final String label;
  final String? hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const CustomTextInput({
    super.key,
    required this.label,
    required this.controller,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.validator,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: context.verticalPaddingConstLow,
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            keyboardType: keyboardType ?? TextInputType.text,
            inputFormatters: inputFormatters,
            textInputAction: textInputAction ?? TextInputAction.next,
            validator: validator,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(context.lowRadius),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(context.lowRadius),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(context.lowRadius),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(context.lowRadius),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(context.lowRadius),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),

              label: Text(label),
              hintText: hintText,
              floatingLabelBehavior:
                  FloatingLabelBehavior.never, // Animasyonu kapatır
            ),
          ),
        )
      ],
    );
  }
}
