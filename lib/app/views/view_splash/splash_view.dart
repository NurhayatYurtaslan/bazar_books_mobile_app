import 'package:auto_route/annotations.dart';
import 'package:bazar_books_mobile_app/app/views/view_splash/view_model/splah_view_model.dart';
import 'package:bazar_books_mobile_app/app/views/view_splash/view_model/splash_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_splash/view_model/splash_state.dart';
import 'package:bazar_books_mobile_app/core/constants/color_constants.dart';
import 'package:bazar_books_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashViewModel()..add(SplashInitialEvent(context)),
      child: BlocBuilder<SplashViewModel, SplashState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: ColorConstants.primaryColor,
                systemOverlayStyle: const SystemUiOverlayStyle(
                    statusBarIconBrightness: Brightness.light),
                automaticallyImplyLeading: false,
              ),
              body: Container(
                color: ColorConstants.primaryColor,
                child: Center(child: Image.asset(Assets.images.logo.path)),
              ));
        },
      ),
    );
  }
}
