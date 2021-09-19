import 'package:flutter/cupertino.dart';
import 'package:test_2/app/sign_in/sign_in_page.dart';
import 'package:test_2/common_widgets/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
          child: Text(text),
          onPressed: onPressed,
          primary: color,
          onPrimary: textColor,
          height: 50.0, // set default
          borderRadius: 15.0, // set default
        );
}
