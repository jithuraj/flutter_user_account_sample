import 'package:flutter/material.dart';
import 'package:user_account_sample/constants.dart';
import 'package:user_account_sample/main.dart';
import 'package:user_account_sample/screens/home/home_screen.dart';
import 'package:user_account_sample/screens/login/login_screen.dart';
import 'package:user_account_sample/widgets/custom_snack_bar.dart';
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

    Map fromDb = hiveBox.get(kHiveDbAccountsKey);

    Map<String, String> accounts = fromDb.cast<String, String>();

    if (accounts[_username] != null) {
      // customSnackBar(context, 'username $_username already exists', Colors.red);
      CustomSnackBar(
          context: context,
          message: 'username $_username already exists',
          color: Colors.red);
    } else {
      accounts[_username] = _password;
      hiveBox.put(kHiveDbAccountsKey, accounts);

      // customSnackBar(context, 'account created.', Colors.green);
      CustomSnackBar(
          context: context, message: 'account created.', color: Colors.green);

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (ctx) => HomeScreen(
                    name: _username,
                  )));
    }
  }

  // void customSnackBar(BuildContext context, String msg, Color color) {
  //   SnackBar snackBar = SnackBar(
  //     content: Text(msg),
  //     behavior: SnackBarBehavior.floating,
  //     dismissDirection: DismissDirection.horizontal,
  //     backgroundColor: color,
  //   );
  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  // }
}
