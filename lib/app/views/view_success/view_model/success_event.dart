import 'package:flutter/material.dart';

abstract class SuccessEvent {}

class SuccessInitialEvent extends SuccessEvent {
  bool controller;
  BuildContext context;
  SuccessInitialEvent(this.context,this.controller);
}
