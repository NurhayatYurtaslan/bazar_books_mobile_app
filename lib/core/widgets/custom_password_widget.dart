import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField(
      {super.key, this.controller, this.validator, this.inputFormatters});
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  @override
  State<CustomPasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<CustomPasswordTextField> {
  final _obsureText = '*';

  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingConstLow,
      child: TextFormField(
        textInputAction: TextInputAction.done,
        controller: widget.controller,
        autofillHints: const [AutofillHints.password],
        keyboardType: TextInputType.visiblePassword,
        obscureText: _isSecure,
        obscuringCharacter: _obsureText,
        validator: widget.validator,
        inputFormatters: widget.inputFormatters,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(context.lowRadius),
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(context.lowRadius),
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(context.lowRadius),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.error)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(context.lowRadius),
              borderSide: BorderSide(color: Theme.of(context).primaryColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(context.lowRadius),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.error)),

          suffixIcon: _onVisiblityIcon(),
          labelText: 'Your password',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          // hintText: hintText,
        ),
      ),
    );
  }

  IconButton _onVisiblityIcon() {
    return IconButton(
      color: Colors.grey,
      onPressed: _changeLoading,
      icon: AnimatedCrossFade(
        duration: const Duration(milliseconds: 500),
        firstChild: const Icon(Icons.visibility_off_outlined),
        secondChild: const Icon(Icons.visibility_outlined),
        crossFadeState:
            _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }
}
