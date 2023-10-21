import 'package:flutter/material.dart';

import 'Custom_form_field.dart';

class FormFields extends StatelessWidget {
  FormFields({super.key, this.isSignUp = false});

  bool isSignUp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (isSignUp)
          CustomFormField(title: 'Full Name', formTitle: 'Enter your name'),
        CustomFormField(
          title: 'Email',
          formTitle: 'Enter your email',
        ),
        CustomFormField(
          title: 'Password',
          formTitle: 'Enter your password',
          isVisible: true,
        ),
      ],
    );
  }
}
