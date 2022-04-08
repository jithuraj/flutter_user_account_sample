import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_account_sample/screens/home/home_screen.dart';
import 'package:user_account_sample/screens/signup/signup_screen.dart';

import '../../widgets/custom_action_button.dart';
import '../../widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextField(
              hint: 'username',
              isObscureText: false,
              returnInputValue: getUsername),
          CustomTextField(
              hint: 'password',
              isObscureText: true,
              returnInputValue: getPassword),
          TextButton(
              onPressed: () {
                signUpButtonPressed(context);
              },
              child: Text('sign up now!')),
          CustomActionButton(
            buttonText: 'login',
            returnClick: loginButtonPressed,
            mainPageContext: context,
          ),
        ],
      ),
    );
  }

  void getUsername(String uname) {
    _username = uname;
    // print(_username);
  }

  void getPassword(String pass) {
    _password = pass;
    // print(_password);
  }

  void loginButtonPressed(BuildContext context) {
    // print('login pressed');

    if (_username == 'jithu' && _password == '1234') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
    }
  }

  void signUpButtonPressed(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => SignupScreen()));
  }
}
