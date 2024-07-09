import 'dart:async';
import 'package:bazar_books_mobile_app/app/views/view_splash/view_model/splash_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_splash/view_model/splash_state.dart';
import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';

class SplashViewModel extends Bloc<SplashEvent, SplashState> {
  SplashViewModel() : super(SplashInitialState()) {
    on<SplashInitialEvent>(_onSplashInitial);
  }
  // AuthService _authService = AuthService();
  Future<FutureOr<void>> _onSplashInitial(
      SplashInitialEvent event, Emitter<SplashState> emit) async {
    Future.delayed(const Duration(seconds: 3), () async {
      // await _authService.isSignedIn()
      //     ? event.context.router.replace(BottomNavigationWidgetRoute())
      //     : event.context.router.replace(OnboardingViewRoute());
      // Navigator.pushReplacement(event.context, MaterialPageRoute(builder: (_) => OnboardingView()));
    });
  }
}