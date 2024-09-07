import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/router/app_router.dart';
import 'package:bazar_books_mobile_app/app/views/view_success/view_model/success_state.dart';
import 'package:bazar_books_mobile_app/app/views/view_success/view_model/success_view_model.dart';
import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_button_widget.dart';
import 'package:bazar_books_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SuccessViewModel(),
      child: BlocBuilder<SuccessViewModel, SuccessState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.images.success.path,
                  ),
                  SizedBox(
                    width: context.mediumValue,
                    height: context.mediumValue,
                  ),
                  const Text(
                    "Congratulation!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: context.lowValue * 1.8,
                        left: context.mediumValue * 1.2,
                        right: context.mediumValue * 1.2),
                    child: Text(
                      textAlign: TextAlign.center,
                      "your account is complete, please enjoy the best menu from us.",
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: context.highValue,
                  ),
                  CustomButton(
                    buttonText: "Get Started",
                    buttonHeight: context.highValue * 0.7,
                    buttonWidth: context.width * 0.9,
                    onPressed: () {
                      context.router.push(const SignInViewRoute());
                    },
                    buttonBgColor: Theme.of(context).primaryColor,
                    buttonTextColor: Colors.white,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
