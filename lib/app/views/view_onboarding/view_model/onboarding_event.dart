import 'package:flutter/material.dart';

abstract class OnboardingEvent {}

class OnboardingInitial extends OnboardingEvent {}

class IndicatorIncremeentEvent extends OnboardingEvent {
  int page;
  BuildContext context;
  PageController pageController = PageController();
  IndicatorIncremeentEvent(this.page, this.context, this.pageController);
}
