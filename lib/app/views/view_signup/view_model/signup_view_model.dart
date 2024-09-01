import 'dart:async';

import 'package:bazar_books_mobile_app/app/views/view_signin/signin_view.dart';
import 'package:bazar_books_mobile_app/app/views/view_signup/view_model/signup_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_signup/view_model/signup_state.dart';
import 'package:bazar_books_mobile_app/core/repository/model/auth/signup/signup_request_model.dart';
import 'package:bazar_books_mobile_app/core/repository/service/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class SignUpViewModel extends Bloc<SignUpEvent, SignUpState> {
  SignUpViewModel() : super(SignUpInitialState()) {
    on<SignUpInitialEvent>(_onSignUpInitialEvent);
  }

  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode(); // Add this line

  AuthService authService = AuthService();

  Future<FutureOr<void>> _onSignUpInitialEvent(
      SignUpInitialEvent event, Emitter<SignUpState> emit) async {
    try {
      await authService.signUp(SignUpRequestModel(
        name: nameController.text,
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ));

      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(event.context).push(MaterialPageRoute(builder: (context) {
          return const SignInView();
        }));
      });
    } catch (e, stack) {
      FirebaseCrashlytics.instance.recordError(e, stack, fatal: true);
    }
  }
}
