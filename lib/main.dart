import 'package:flutter/material.dart';
import 'package:user_account_sample/constants.dart';
import 'package:user_account_sample/screens/login/login_screen.dart';
import 'package:user_account_sample/screens/signup/signup_screen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: kLoginPageRoute,
      routes: {
        kLoginPageRoute: (context) => LoginScreen(),
        kSignupPageRoute: (context) => SignupScreen(),
      },
    );
  }
}
