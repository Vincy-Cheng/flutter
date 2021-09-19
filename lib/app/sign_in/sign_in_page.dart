// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_2/app/sign_in/sign_in_button.dart';
import 'package:test_2/app/sign_in/social_sign_in_button.dart';
import 'package:test_2/common_widgets/custom_raised_button.dart';

//stl 1st one

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Time tracker2'),
          elevation: 2.0 //shadow that under the title
          ),
      body: buildContent(), // extract method : Ctrl + .
      backgroundColor: Colors.green[200],
    );
  }

  Widget /*Container*/ buildContent() {
    // add _ to make it private
    return Padding(
      // can use Padding() instead Container() and color is needed to remove
      // container inside the bosy part
      //color: Colors.blue,
      padding: EdgeInsets.all(16.0),
      child: Column(
        // could be any widget in flutter,
        mainAxisAlignment: MainAxisAlignment.center, // vertical
        crossAxisAlignment: CrossAxisAlignment.stretch, // horizontal
        //create a column that in the container with the below setting
        children: <Widget>[
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8.0,
          ),
          /*
          ElevatedButton(
            child: Text('Sign in with Google'),
            onPressed:
                () {}, //_signInWithGoogle, //() {}, // 'null' can use to disable
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // background color
              onPrimary: Colors.red, // foreground color --> text color
              textStyle:
                  TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
            ),
          ),
          /*
          RaisedButton(
            child: Text('Sign in with Google'),
          )
          */
          /*
          Container(
            // define those setting
            color: Colors.orange, // orange color for the container
            child: SizedBox(
              // create a box with size
              //width: 100.0,
              height: 100.0,
            ),
          ),
          
          SizedBox(
            height: 8.0,
          ),
          Container(
            // define those setting
            color: Colors.red, // orange color for the container
            child: SizedBox(
              // create a box with size
              //width: 100.0,
              height: 100.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            // define those setting
            color: Colors.purple, // orange color for the container
            child: SizedBox(
              // create a box with size
              //width: 100.0,
              height: 100.0,
            ),
          )
          */
          SizedBox(
            height: 8.0,
          ),
          */
          /* 
          CustomRaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('p/google.png'),
                Text('Sign in with Google'),
                Opacity(
                  opacity: 0.5,// value : 0 to 1
                  child: Image.asset('p/google.png'),
                ),
              ],
            ),
            onPressed: () {},
            primary: Colors.white,
            onPrimary: Colors.black87,
            height: 50.0,
            borderRadius: 4.0,
          ),*/
          SizedBox(
            height: 8.0,
          ),
          SocialSignInButton(
            assetName: 'p/google.png',
            text: 'Sign in with Google',
            onPressed: () {},
            color: Colors.white,
            textColor: Colors.black87,
            //borderRadius: 4.0,
          ),
          SizedBox(
            height: 8.0,
          ),
          /*
          CustomRaisedButton(
            child: Text('Sign in with Facebook'),
            onPressed: () {},
            primary: Colors.blue,
            onPrimary: Colors.black87,
            height: 50.0,
            borderRadius: 4.0,
          ),*/
          SizedBox(
            height: 8.0,
          ),
          SocialSignInButton(
            assetName: 'p/facebook-logo-2019-thumb.png',
            text: 'Sign in with Facebook',
            onPressed: () {},
            color: Color(0xFF334D92),
            textColor: Colors.black87,
            //borderRadius: 4.0,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: 'Sign in with email',
            onPressed: () {},
            color: Color(0xFF00796B),
            textColor: Colors.black87,
            //borderRadius: 4.0,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'or',
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: 'Go anonymus',
            onPressed: () {},
            color: Colors.lime,
            textColor: Colors.red,
            //borderRadius: 4.0,
          ),
        ],
      ),
    );
  }
/*
  void _signInWithGoogle(){
      // TODO: Auth with Google
  }
  */
}


// selection the code : Shift + Alt + right arrow