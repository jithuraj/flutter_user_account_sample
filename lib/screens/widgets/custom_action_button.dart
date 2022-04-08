import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  String buttonText;
  Function returnClick;

  CustomActionButton({required this.buttonText, required this.returnClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
        onPressed: () {
          returnClick();
        },
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
