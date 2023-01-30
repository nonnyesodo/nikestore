import 'package:flutter/material.dart';

class Shoel extends StatelessWidget {
  final String image;
  const Shoel({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: 70,
      width: 70,
    );
  }
}
