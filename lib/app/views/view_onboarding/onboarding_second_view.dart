import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/router/app_router.dart';
import 'package:bazar_books_mobile_app/core/constants/color_constants.dart';
import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_button_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/text_button_widget.dart';
import 'package:bazar_books_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingSecondView extends StatelessWidget {
  const OnboardingSecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: ColorConstants.backgroundColor,
          ),
          body: Container(
    color: ColorConstants.backgroundColor,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: context.highValue * 3),
          child: TextButtonWidget(
            onPressed: () {
              context.router.replaceAll([const SplashViewRoute()]);
            },
            text: 'Skip',
            textStyle: const TextStyle(
              fontSize: 18,
            ),
            textColor: ColorConstants.primaryColor,
          ),
        ),
        Image.asset(Assets.images.onboardingThree.path),
        SizedBox(
          height: context.sizedHeightBoxLow.height,
        ),
        const Text(
          'Your Bookish Soulmate \nAwaits',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: context.sizedHeightBoxLow.height,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: context.mediumValue * 2,
              right: context.mediumValue * 2),
          child: Text(
            ' Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey.shade500,
                fontSize: 15),
          ),
        ),
        SizedBox(height: context.sizedHeightBoxExtraHigh.height),
        CustomButton(
          buttonText: 'Get Started',
          onPressed: () {
            context.router.replaceAll([const OnboardingThirdViewRoute()]);
          },
          buttonBgColor: Theme.of(context).primaryColor,
          buttonTextColor: ColorConstants.textDark,
        ),
        SizedBox(height: context.sizedHeightBoxHigh.height),
        TextButtonWidget(
          onPressed: () {
            context.router.replaceAll([const SplashViewRoute()]);
          },
          text: 'Sign in',
          textColor: ColorConstants.primaryColor,
        ),
      ],
    ),
          ),
        );
  }
}
