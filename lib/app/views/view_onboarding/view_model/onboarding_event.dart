import 'package:flutter/material.dart';

abstract class OnboardingEvent {}

class OnboardingInitial extends OnboardingEvent {
  OnboardingInitial(int i);
}

class IndicatorIncrementEvent extends OnboardingEvent {
  int page;
  BuildContext context;
  PageController pageController = PageController();
  IndicatorIncrementEvent(this.page, this.context, this.pageController);
}
