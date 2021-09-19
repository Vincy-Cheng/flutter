import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton({
    required this.child,
    required this.onPressed,
    required this.primary,
    required this.onPrimary,
    required this.height,
    required this.borderRadius,// can set to be default
  });

  final Widget child;
  final VoidCallback onPressed;
  final Color primary;
  final Color onPrimary;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox( // change the return ElevatedButton to SizedBox to have height
    height: height,
      child: ElevatedButton(
        child: child, //Text('Sign in with Google'),
        onPressed:
            onPressed, //_signInWithGoogle, //() {}, // 'null' can use to disable
        style: ElevatedButton.styleFrom(
          primary: primary, // background color
          onPrimary: onPrimary, // foreground color --> text color
          textStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
        ),
      ),
    );
  }
}
