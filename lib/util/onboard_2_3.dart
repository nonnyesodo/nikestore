// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:nikestore/util/button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Boarding extends StatelessWidget {
  String buttontext = '';
  String image;
  String description = '';
  String text = '';
  VoidCallback press;
  Boarding({
    Key? key,
    required this.buttontext,
    required this.image,
    required this.description,
    required this.text,
    required this.press,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 350, child: Image(image: AssetImage(image))),
        const SizedBox(
          height: 35.0,
        ),
        Text(
          description,
          style: const TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const SlideEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 40.0,
                dotHeight: 5.0,
                strokeWidth: 1.5,
                dotColor: Colors.yellow,
                activeDotColor: Colors.white),
            onDotClicked: (index) => controller.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Button(
                text: buttontext,
                bcolor: Colors.white,
                btxtcolor: Colors.black,
                press: press),
          ),
        ),
      ],
    );
  }
}
