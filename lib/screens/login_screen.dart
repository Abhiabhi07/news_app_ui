import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_ui/Widgets/custom_form_field.dart';
import 'package:news_app_ui/Widgets/auth_button.dart';
import 'package:news_app_ui/Widgets/divider_text.dart';
import 'package:news_app_ui/Widgets/form_fields.dart';
import 'package:news_app_ui/Widgets/round_container.dart';
import 'package:news_app_ui/Widgets/title_with_widgets.dart';
import 'package:news_app_ui/screens/sing_up_screen.dart';

import 'bottom_navigation_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(13.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            const TitleWithWidgets(
              title: 'Welcome back!',
              subTitle:
                  'Login to your account to continue read news that you saved',
            ),
            const DividerText(),
            FormFields(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password?',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            AuthButtons(
              btnTitle: 'Login',
              subTitle: 'Don\'t have an account?',
              auth: 'Sign Up',
              description: 'Logging',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => CustomBottomNavBar()));
              },
              onPressedSignIn: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => SignUpScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
