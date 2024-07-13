abstract class OnboardingState {
  int page;

  OnboardingState({required this.page});
}

class OnboardingInitialState extends OnboardingState {
  @override
  // ignore: overridden_fields
  int page;
  OnboardingInitialState(this.page) : super(page: page);
}
