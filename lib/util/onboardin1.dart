import 'package:flutter/material.dart';
import 'package:nikestore/util/button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Buildpage extends StatelessWidget {
  String title = '';
  String buttontext = '';
  String image;

  Buildpage({
    Key? key,
    required this.title,
    required this.buttontext,
    required this.image,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        Container(
            height: 500,
            margin: const EdgeInsets.only(left: 105),
            child: Image(image: AssetImage(image))),
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
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Button(
                text: buttontext,
                bcolor: Colors.white,
                btxtcolor: Colors.black,
                press: () {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                }),
          ),
        )
      ],
    );
  }
}
