import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/router/app_router.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_state.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_view_model.dart';
import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:bazar_books_mobile_app/core/repository/service/auth_service.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_button_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_button_with_icon.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_password_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_text_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/title_and_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninViewModel(
        onSuccessCallback: () {
          // Perform navigation or other success actions
          Navigator.pushReplacementNamed(context, '/onboarding');
        },
        onErrorCallback: (errorMessage) {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.transparent,
            content: Text(errorMessage),
          ));
        },
      ),
      child:
          BlocBuilder<SigninViewModel, SigninState>(builder: (context, state) {
        return Scaffold(
            body: SafeArea(
          child: Padding(
            padding: context.paddingNormal,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: context.mediumValue * 3,
                  ),
                  const TitleAndDescriptionWidget(
                    headerText: 'Welcome Back 👋',
                    text: 'Sign to your account',
                  ),
                  SizedBox(
                    height: context.lowValue,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextInput(
                        label: 'Your email',
                        controller:
                            context.read<SigninViewModel>().emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                            return 'validEmailMessage';
                          }
                          return null;
                        },
                      ),
                      CustomPasswordTextField(
                        controller:
                            context.read<SigninViewModel>().passwordController,
                        validator: (value) {
                          if (!RegExp(
                                  r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$")
                              .hasMatch(value!)) {
                            return 'Error';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () =>
                              context.router.push(OnboardingViewRoute()),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onPressed: () {
                          context
                              .read<SigninViewModel>()
                              .add(SigninInitialEvent(context));
                        },
                        buttonText: 'Login',
                        buttonBgColor: Theme.of(context).primaryColor,
                        buttonTextColor: Colors.white,
                      ),
                      SizedBox(
                        height: context.mediumValue,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Don't have an account? ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                              onTap: () =>
                                  context.router.push(OnboardingViewRoute()),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: context.mediumValue,
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Or with',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        buttonText: 'Google',
                        onPressed: () async {
                          final user = await AuthService().loginWithGoogle();
                          if (user != null) {
                            // Kullanıcı başarıyla giriş yaptı, yönlendirme veya başka işlemler yapabilirsiniz
                            // ignore: use_build_context_synchronously
                            context.router.push(OnboardingViewRoute());
                          } else {
                            // Giriş işlemi başarısız oldu, hata mesajı gösterebilirsiniz
                          }
                        },
                        buttonBgColor: Colors.white,
                        buttonTextColor: Colors.black,
                      ),
                      SizedBox(
                        height: context.lowValue,
                      ),
                      const CustomButtonWithIcon()
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
      }),
    );
  }
}

