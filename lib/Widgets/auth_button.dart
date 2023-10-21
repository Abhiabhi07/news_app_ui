import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons(
      {super.key,
      required this.btnTitle,
      required this.subTitle,
      required this.auth,
      required this.description,
      required this.onPressed,
        required this.onPressedSignIn
      });

  final String btnTitle;
  final String subTitle;
  final String auth;
  final String description;
  final void Function() onPressed;
  final void Function() onPressedSignIn;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme.titleSmall!;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: onPressed,
              child: Center(
                child: Text(
                  btnTitle,
                  style: theme.copyWith(color: Colors.white),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
            ),
          ),

          RichText(
              text: TextSpan(
                  text: subTitle,
                  style:
                      theme.copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                  children: [
                TextSpan(
                    text: auth,
                    recognizer: TapGestureRecognizer()..onTap = onPressedSignIn,
                    style: theme.copyWith(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ))
              ])),
          const SizedBox(
            height: 30,
          ),
          RichText(
              text: TextSpan(
                  text: 'By $description in you agree to them ',
                  style: theme,
                  children: [
                TextSpan(
                    text: 'Privacy Policy and Terms of \n Service',
                    style: theme.copyWith(
                      decoration: TextDecoration.underline,
                    ))
              ]))

          // Spacer(),
          // Text('By Logging in you agree to the ')
          //
        ],
      ),
    );
  }
}
