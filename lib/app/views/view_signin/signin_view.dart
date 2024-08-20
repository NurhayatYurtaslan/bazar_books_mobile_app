import 'package:auto_route/auto_route.dart';
import 'package:bazar_books_mobile_app/app/router/app_router.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_event.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_state.dart';
import 'package:bazar_books_mobile_app/app/views/view_signin/view_model/signin_view_model.dart';
import 'package:bazar_books_mobile_app/core/extensions/context_extension.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_button_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_password_widget.dart';
import 'package:bazar_books_mobile_app/core/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


@RoutePage()
class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => SigninViewModel(),
    child: BlocBuilder<SigninViewModel, SigninState>(builder: (context,state){
      return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: context.paddingNormal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back 👋',
                  style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 40, fontWeight: FontWeight.w500)),
              Row(
                      children: [
                        const Text('L10n.of(context)!.dontHaveAccount',
                            style: TextStyle(fontSize: 16)),
                        TextButton(
                            onPressed: () =>context.router.push(OnboardingViewRoute()),
                            child: Text(
                              'Signup',
                              style:  TextStyle(
                                      color:Theme.of(context).primaryColor, fontSize: 16),
                            ))
                      ],
                    ),
              SizedBox(
                height: context.height * .6,
                child: Column(
                
                  children: [
                    CustomTextInput(
                      label: 'Email',
                      icon: const Icon(Icons.email_outlined),
                      controller: context.read<SigninViewModel>().emailController,
                       keyboardType: TextInputType.emailAddress,
                       validator: (value) {
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) { 
                             return 'validEmailMessage';
                          }
                          
                          return null;
                        },
                    ),
                     CustomPasswordTextField(
                      controller: context.read<SigninViewModel>().passwordController,
                       validator: (value) {
                          if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$").hasMatch(value!)) {
                            return 'Error';
                          }
                          return null;
                        },
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
                      buttonText: 'Login', buttonBgColor: Theme.of(context).primaryColor, buttonTextColor: Colors.black,
                    ),
                    
                  ],
                ),
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