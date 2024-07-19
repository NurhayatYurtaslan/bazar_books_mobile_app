import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorConstants.backgroundColor,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
    );
  }
}
