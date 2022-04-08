import 'package:flutter/material.dart';

class CustomSnackBar {
  BuildContext context;
  String message;
  Color color;

  CustomSnackBar(
      {required this.context, required this.color, required this.message}) {
    showSnackbar();
  }

  showSnackbar() {
    SnackBar snackBar = SnackBar(
      content: Text(message),
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      backgroundColor: color,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
