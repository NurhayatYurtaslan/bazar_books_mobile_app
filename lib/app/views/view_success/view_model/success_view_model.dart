import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/router/app_router.dart';
import 'package:bazar_books_mobile_app/app/views/view_success/view_model/success_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_success/view_model/success_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessViewModel extends Bloc<SuccessEvent, SuccessState> {
  SuccessViewModel() : super(SuccessInitialState()) {
    on<SuccessInitialEvent>(_onGetStarted);
  }
  FutureOr<void> _onGetStarted(
      SuccessInitialEvent event, Emitter<SuccessState> emit) async {
    if (event.controller == true) {
      event.context.router.replace(const SignInViewRoute());
    } else {
      emit(SuccessInitialState());
    }
  }
}
