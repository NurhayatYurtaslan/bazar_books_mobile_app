import 'package:flutter/material.dart';

class PasswordRequirements extends StatelessWidget {
  final String password;

  const PasswordRequirements({super.key, required this.password});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PasswordRequirementItem(
          text: 'Minimum 8 characters',
          isValid: password.length >= 8,
        ),
        PasswordRequirementItem(
          text: 'At least 1 number (1-9)',
          isValid: RegExp(r'\d').hasMatch(password),
        ),
        PasswordRequirementItem(
          text: 'At least lowercase or uppercase letters',
          isValid: RegExp(r'[A-Za-z]').hasMatch(password),
        ),
      ],
    );
  }
}

// Şifre gereksinimi öğesi widget'ı
class PasswordRequirementItem extends StatelessWidget {
  final String text;
  final bool isValid;

  const PasswordRequirementItem(
      {super.key, required this.text, required this.isValid});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          isValid ? Icons.check_circle : Icons.cancel,
          color: isValid ? Colors.green : Colors.red,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(color: isValid ? Colors.green : Colors.red),
        ),
      ],
    );
  }
}
