import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  bool isObscureText = false;
  String hint = '';
  Function(String) returnInputValue;

  CustomTextField(
      {required this.hint,
      required this.isObscureText,
      required this.returnInputValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[200],
          borderRadius: BorderRadius.circular(80),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            obscureText: isObscureText,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
            ),
            onChanged: (val) {
              returnInputValue(val);
            },
          ),
        ),
      ),
    );
  }
}
