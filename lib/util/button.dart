// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  final Color bcolor;
  final Color btxtcolor;
  final VoidCallback press;
  const Button({
    Key? key,
    required this.text,
    required this.bcolor,
    required this.btxtcolor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: bcolor),
      child: Text(
        text,
        style: TextStyle(color: btxtcolor, fontSize: 18),
      ),
    );
  }
}
