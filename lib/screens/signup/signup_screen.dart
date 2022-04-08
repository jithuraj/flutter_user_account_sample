import 'package:flutter/material.dart';
import 'package:user_account_sample/screens/home/home_screen.dart';
import 'package:user_account_sample/screens/login/login_screen.dart';
import '../../widgets/custom_action_button.dart';
import '../../widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
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
                loginButtonPressed(context);
              },
              child: Text('Already have an account? login here.')),
          CustomActionButton(
            buttonText: 'sign up',
            returnClick: signUpButtonPressed,
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
    print('login pressed');
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => LoginScreen()));
  }

  void signUpButtonPressed(BuildContext context) {
    //store data to db
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => HomeScreen()));
  }
}
