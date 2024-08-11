import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_state.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_view_model.dart';
import 'package:bazar_books_mobile_app/core/constants/color_constants.dart';
import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:bazar_books_mobile_app/core/widgets/signin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final FocusNode emailFocus = FocusNode();
    return BlocProvider(
      create: (context) => SigninViewModel(),
      child: BlocBuilder<SigninViewModel, SigninState>(
        builder: (context, state) {
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
                    Padding(
                      padding: EdgeInsets.only(
                          left: context.constMediumValue,
                          top: context.mediumValue),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Ensure alignment to start
                        children: [
                          // Welcome Back
                          Text(
                            'Welcome Back 👋',
                            style: TextStyle(
                              fontSize: context.constMediumValue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Sign to your account
                          Container(
                            alignment: Alignment
                                .centerLeft, // Ensure alignment to the left
                            child: Text(
                              "Sign to your account",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: context.constMediumValue / 1.5),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                              left: context.mediumValue,
                              right: context.mediumValue),
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
        },
      ),
    );
  }
}
