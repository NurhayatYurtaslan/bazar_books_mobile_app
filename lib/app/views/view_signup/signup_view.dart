import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/views/view_signup/view_model/signup_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_signup/view_model/signup_state.dart';
import 'package:bazar_books_mobile_app/app/views/view_signup/view_model/signup_view_model.dart';
import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_button_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_password_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_text_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/password_reqister_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/title_and_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpViewModel(),
      child: BlocBuilder<SignUpViewModel, SignUpState>(
        builder: (context, state) {
          final viewModel = context.read<SignUpViewModel>();
          final passwordController = viewModel.passwordController;
          final passwordFocusNode = viewModel.passwordFocusNode;

          // Şifre gereksinimlerini kontrol etme fonksiyonu
          bool isPasswordValid(String password) {
            bool hasMinLength = password.length >= 8;
            bool hasNumber = RegExp(r'\d').hasMatch(password);
            bool hasLetter = RegExp(r'[A-Za-z]').hasMatch(password);
            return hasMinLength && hasNumber && hasLetter;
          }

          // Şifre alanına odaklanma durumu
          bool isPasswordFieldFocused = passwordFocusNode.hasFocus;

          return Form(
            key: viewModel.formKey,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Padding(
                  padding: context.paddingNormal,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: context.mediumValue * 3),
                        const TitleAndDescriptionWidget(
                          headerText: 'Sign Up',
                          text: 'Create account and choose favorite menu',
                        ),
                        SizedBox(height: context.mediumValue),
                        CustomTextInput(
                          label: "Your Name",
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
                          ],
                          controller: viewModel.nameController,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return "Please Enter Your Name";
                            }
                            return null;
                          },
                        ),
                        CustomTextInput(
                          label: "Your email",
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
                              return 'Please Enter a Valid E-Mail Address';
                            }
                            return null;
                          },
                          controller: viewModel.emailController,
                        ),
                        CustomPasswordTextField(
                          controller: passwordController,
                          validator: (value) {
                            if (!isPasswordValid(value!)) {
                              return 'Please Enter a Valid Password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: context.mediumValue),
                        // Şifre gereksinimleri
                        if (isPasswordFieldFocused ||
                            passwordController.text.isNotEmpty)
                          PasswordRequirements(
                            password: passwordController.text,
                          ),
                        SizedBox(height: context.mediumValue),
                        // "Register" butonu
                        CustomButton(
                          buttonText: 'Register',
                          buttonBgColor: Theme.of(context).primaryColor,
                          buttonTextColor: Colors.white,
                          onPressed: () {
                            if (viewModel.formKey.currentState!.validate()) {
                              viewModel.add(SignUpInitialEvent(context));
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
