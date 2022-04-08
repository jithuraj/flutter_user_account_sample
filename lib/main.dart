import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:user_account_sample/constants.dart';
import 'package:user_account_sample/screens/login/login_screen.dart';
import 'package:user_account_sample/screens/signup/signup_screen.dart';

late Box hiveBox;

void main() async {
  runApp(MyApp());
  await Hive.initFlutter();
  hiveBox = await Hive.openBox('users');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: kSignupPageRoute,
      routes: {
        kLoginPageRoute: (context) => LoginScreen(),
        kSignupPageRoute: (context) => SignupScreen(),
      },
    );
  }
}
