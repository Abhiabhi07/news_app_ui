import 'package:flutter/material.dart';
import 'package:news_app_ui/Widgets/auth_button.dart';
import 'package:news_app_ui/Widgets/divider_text.dart';
import 'package:news_app_ui/Widgets/form_fields.dart';
import 'package:news_app_ui/Widgets/title_with_widgets.dart';

import 'bottom_navigation_bar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(13.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                const TitleWithWidgets(
                  title: 'Welcome!',
                  subTitle:
                      'Sign Up to make an account to save news to your account',
                ),
                const DividerText(),
                FormFields(isSignUp: true),
                const Spacer(
                  flex: 2,
                ),
                AuthButtons(
                  btnTitle: 'Sign Up',
                  subTitle: 'Have an account?',
                  auth: 'Login',
                  description: 'Signing',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => CustomBottomNavBar()));
                  },
                  onPressedSignIn: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
