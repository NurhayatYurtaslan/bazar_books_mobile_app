import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/core/constants/color_constants.dart';
import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:bazar_books_mobile_app/core/widgets/signin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final FocusNode emailFocus = FocusNode();
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorConstants.backgroundColor,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SignInWidget(),
              SizedBox(
                height: context.mediumValue,
              ),
              // Email Input Field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: context.mediumValue),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: context.mediumValue * 0.60),
                      )),
                  SizedBox(
                    height: context.constLowValue,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: context.mediumValue, right: context.mediumValue),
                    child: TextFormField(
                      onTap: () {
                        emailFocus.requestFocus();
                      },
                      controller: emailController,
                      focusNode: emailFocus,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        focusColor: ColorConstants.primaryColor,
                        hintText: "Your email",
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              context.constLowValue * 1.7),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
