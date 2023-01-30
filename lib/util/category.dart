import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String text;
  Color bcolor;
  Category({
    Key? key,
    required this.text,
    required this.bcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bcolor,
        borderRadius: const BorderRadius.all(
          Radius.circular(14.0),
        ),
      ),
      height: 40,
      width: 100,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
