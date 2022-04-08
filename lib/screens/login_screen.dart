import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_account_sample/screens/widgets/custom_action_button.dart';
import 'package:user_account_sample/screens/widgets/custom_text_field.dart';

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
          CustomActionButton(
            buttonText: 'login',
            returnClick: loginButtonPressed,
          ),
        ],
      ),
    );
  }

  void getUsername(String uname) {
    _username = uname;
    print(_username);
  }

  void getPassword(String pass) {
    _password = pass;
    print(_password);
  }

  void loginButtonPressed() {
    print('login pressed');
  }
}
