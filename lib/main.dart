import 'package:flutter/material.dart';
import 'package:login_singup/screen/BloodGroup.dart';
import 'package:login_singup/screen/login_signup.dart';

void main() {
  runApp(LoginSignupUI());
}

class LoginSignupUI extends StatelessWidget {
  const LoginSignupUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blood Donation",
      home: LoginSignupScreen(),
      routes: {
        'Groups':(context) => BloodGroups()
      },
    );
  }
  
}
