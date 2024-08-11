import 'package:flutter/material.dart';

abstract class SigninEvent {}

class SigninInitialEvent extends SigninEvent {
  BuildContext context;
  SigninInitialEvent(this.context);
}
