import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_account_sample/screens/login_screen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
