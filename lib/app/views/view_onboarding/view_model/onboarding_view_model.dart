import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/router/app_router.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/view_model/onboarding_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/view_model/onboarding_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class OnboardingViewModel extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingViewModel() : super(OnboardingInitialState(0)) {
    on<IndicatorIncrementEvent>(_onIndicatorIncrement);
  }

  FutureOr<void> _onIndicatorIncrement(
      IndicatorIncrementEvent event, Emitter<OnboardingState> emit) {
    event.page++;
    if (event.page < 3) {
      event.pageController.animateToPage(event.page,
          duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    } else {
      event.context.router.replace(const SignInViewRoute());
    }
    emit(OnboardingInitialState(event.page));
  }
}