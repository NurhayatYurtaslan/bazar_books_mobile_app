import 'package:bazar_books_mobile_app/core/constants/color_constants.dart';
import 'package:bazar_books_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:ColorConstants.primaryColor,
        child: Center(
          child: Image.asset(Assets.images.logo.path)
        ),
      )
    );
  }
}