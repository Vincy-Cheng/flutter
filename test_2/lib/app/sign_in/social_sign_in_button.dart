import 'package:flutter/cupertino.dart';
import 'package:test_2/app/sign_in/sign_in_page.dart';
import 'package:test_2/common_widgets/custom_raised_button.dart';

// basically same with sign_in_button.dart

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    required String assetName,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : /* can add 'assert(text != null)' here ; assert is used to stop execution if a boolean condition is false*/
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              Opacity(
                opacity: 0.0, // value : 0 to 1
                child: Image.asset(assetName),
              ),
            ],
          ),
          onPressed: onPressed,
          primary: color,
          onPrimary: textColor,
          height: 50.0, // set default
          borderRadius: 15.0, // set default
        );
}
