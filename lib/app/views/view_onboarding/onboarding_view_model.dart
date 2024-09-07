import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/router/app_router.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/view_model/onboarding_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/view_model/onboarding_state.dart';
import 'package:bazar_books_mobile_app/app/views/view_onboarding/view_model/onboarding_view_model.dart';
import 'package:bazar_books_mobile_app/core/constants/color_constants.dart';
import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_button_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/text_button_widget.dart';
import 'package:bazar_books_mobile_app/gen/assets.gen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
// ignore: must_be_immutable
class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
          create: (context) => OnboardingViewModel(),
          child: BlocBuilder<OnboardingViewModel, OnboardingState>(
            builder: (context, state) {
              return SizedBox(
                width: double.infinity,
                height: context.height,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: pageController,
                      itemCount: onboardingPages(context).length,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: context.height * 0.1,
                            ),
                            SizedBox(
                                width: context.width * 0.80,
                                child: TextButtonWidget(
                                  onPressed: () {
                                    context.router
                                        .replace(const SignInViewRoute());
                                  },
                                  text: 'Skip',
                                  textColor: ColorConstants.primaryColor,
                                )),
                            SizedBox(
                              width: context.width * 0.70,
                              child: Image.asset(
                                onboardingPages(context)[index][0]!,
                              ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  3,
                                  (pageIndex) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: AnimatedContainer(
                                        curve: Curves.easeIn,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        width: pageIndex == index
                                            ? context.width * 0.035
                                            : context.width * 0.022,
                                        height: pageIndex == index
                                            ? context.height * 0.009
                                            : context.height * 0.008,
                                        decoration: const BoxDecoration(
                                            color:
                                                ColorConstants.backgroundColor),
                                      )),
                                )),
                            Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  onboardingPages(context)[index][1]!,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    onboardingPages(context)[index][2]!,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade500),
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.height * 0.02,
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<OnboardingViewModel>().add(
                                      IndicatorIncrementEvent(
                                          index, context, pageController),
                                    );
                              },
                              child: DotsIndicator(
                                dotsCount: 3,
                                position: index,
                                decorator: DotsDecorator(
                                  color: Colors.grey.shade500,
                                  activeColor: ColorConstants.primaryColor,
                                  size: const Size.square(9.0),
                                  activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: context.height * 0.02,
                            ),
                            CustomButton(
                                buttonBorderRadius: BorderRadius.circular(20),
                                buttonHeight: context.highValue * 0.7,
                                buttonWidth: context.width * 0.8,
                                buttonText: onboardingPages(context)[index][3]!,
                                onPressed: () {
                                  context.read<OnboardingViewModel>().add(
                                      IndicatorIncrementEvent(
                                          index, context, pageController));
                                },
                                buttonBgColor: ColorConstants.primaryColor,
                                buttonTextColor:
                                    ColorConstants.backgroundColor),
                            SizedBox(
                              height: context.height * 0.03,
                            ),
                            TextButtonWidget(
                              onPressed: () {
                                context.router.replace(const SignInViewRoute());
                              },
                              text: 'Sign In',
                              textColor: ColorConstants.primaryColor,
                            ),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}

List onboardingPages(BuildContext context) {
  return [
    [
      Assets.images.onboardingOne.path,
      "Now reading books \nwill be easier",
      " Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.",
      "Continue",
    ],
    [
      Assets.images.onboardingTwo.path,
      "Your Bookish Soulmate \nAwaits",
      "Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.",
      "Continue",
    ],
    [
      Assets.images.onboardingThree.path,
      "Start Your Adventure \n",
      "Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let's go!",
      "Get Started",
    ]
  ];
}
