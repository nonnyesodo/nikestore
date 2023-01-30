import 'package:flutter/material.dart';
import 'package:nikestore/ui/home.dart';
import 'package:nikestore/util/onboard_2_3.dart';

import '../util/onboardin1.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
//how to add image background in flutter?
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: PageView(
          controller: controller,
          children: [
            Buildpage(
              controller: controller,
              title: 'WELLCOME TO\n         NIKE',
              image: 'images/onboard1.png',
              buttontext: 'Get Started',
            ),
            Boarding(
              text: 'Smart,Gorgeous & fashionable\n    Colection Explore Now',
              image: 'images/onboard2.png',
              description: 'Let\'s Start Journey\n        With Nike',
              controller: controller,
              buttontext: 'Next',
              press: () {
                controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
            ),
            Boarding(
                buttontext: 'Next',
                image: 'images/onboard3.png',
                description: 'You Have The\n    Power To',
                text:
                    'There Are Many Beautiful And Attractive\n                   Plants To Your Room',
                controller: controller,
                press: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  });
                }),
          ],
        ),
      ),
    );
  }
}
