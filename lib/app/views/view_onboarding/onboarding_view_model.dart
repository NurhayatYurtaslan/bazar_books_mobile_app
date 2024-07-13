import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/router/app_router.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/onboarding_first_view.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/onboarding_second_view.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/onboarding_third_view.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/view_model/onboarding_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/view_model/onboarding_state.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/view_model/onboarding_view_model.dart';
import 'package:bazar_books_mobile_app/core/constants/color_constants.dart';
import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingViewModel(),
      child: BlocBuilder<OnboardingViewModel, OnboardingState>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: bodyWidget(state),
                  ),
                  Padding(
                    padding: context.paddingNormal,
                    child: SizedBox(
                        
                        child: CustomButton(
                            buttonText: "Cont",
                            onPressed: () {
                              if (state.currentIndex < 2) {
                                context.read<OnboardingViewModel>().add(
                                    CurrentPageIndexEvent(
                                        state.currentIndex + 1));
                              } else {
                                context.router.replaceAll([const SplashViewRoute()]);
                              }
                            }, buttonBgColor: ColorConstants.primaryColor, buttonTextColor: ColorConstants.backgroundColor,)),
                  )
                ],
              ),
            )),
          );
        },
      ),
    );
  }

  Widget bodyWidget(OnboardingState state) {
    if (state.currentIndex == 0) {
      return const OnboardingFirstView();
    } else if (state.currentIndex == 1) {
      return const OnboardingSecondView();
    } else if (state.currentIndex == 2) {
      return const OnboardingThirdView();
      
    } else {
      return Container();
    }
  }
}