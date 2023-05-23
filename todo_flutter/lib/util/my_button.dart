import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {  //ignore: must_be_immutable

  final String text;
  VoidCallback? onPressed;
  MyButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onPressed: onPressed,
      color: const Color.fromARGB(255, 16, 255, 7),
      child: Text(text),
    );
  }
}
