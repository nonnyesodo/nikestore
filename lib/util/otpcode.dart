import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  final String text;

  const Otp({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      height: 60,
      width: 60,
      child: Center(
          child: Text(
        text,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}
