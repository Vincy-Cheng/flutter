//code with andrea
import 'package:flutter/material.dart';
import 'package:test_2/app/sign_in/sign_in_page.dart';


void main() {// standard
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget { // just type st then choose the 1st one
  //const ({ Key? key }) : super(key: key);

  @override // override in superclass
  Widget build(BuildContext context) {
    final signInPage = SignInPage();
    //const signInPage = SignInPage();
    signInPage.buildContent();
    return MaterialApp(
      title: 'Time Tracker1',
      theme: ThemeData(
        primarySwatch: Colors.amber),
      home: SignInPage()//Container(color: Colors.blue,),
    );
  }
}

//signing page




