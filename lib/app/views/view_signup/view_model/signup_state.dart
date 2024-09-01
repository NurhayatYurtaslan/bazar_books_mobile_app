abstract class SignUpState {}

class SignUpInitialState extends SignUpState {}

class SignUpErrorState extends SignUpState {
  final String errorMessage;

  SignUpErrorState(this.errorMessage);
}
