import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/router/app_router.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_state.dart';
import 'package:bazar_books_mobile_app/core/repository/model/auth/signin/signin_request_model.dart';
import 'package:bazar_books_mobile_app/core/repository/service/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninViewModel extends Bloc<SigninEvent, SigninState> {
  SigninViewModel() : super(SigninInitialState()) {
    on<SigninInitialEvent>(_initial);
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  AuthService authService = AuthService();

  Future<FutureOr<void>> _initial(
      SigninInitialEvent event, Emitter<SigninState> emit) async {
    FocusManager.instance.primaryFocus?.unfocus();
    try {
      await authService.signIn(SignInRequestModel(
          email: emailController.text.trim(),
          password: passwordController.text.trim()));
      Future.delayed(const Duration(seconds: 2), () {
        event.context.router.replace(OnboardingViewRoute());
      });
    } catch (e, stack) {
      FirebaseCrashlytics.instance.recordError(e, stack, fatal: true);
      FirebaseAuthException exception = e as FirebaseAuthException;
      if (exception.code == 'invalid-email') {
        Future.delayed(const Duration(seconds: 2), () {
          ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            content: Text('Your email format is incorrect.'),
          ));
        });
      } else {
        Future.delayed(const Duration(seconds: 2), () {
          ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            content: Text('Email or password incorrect.'),
          ));
        });
      }
    }
  }
}
