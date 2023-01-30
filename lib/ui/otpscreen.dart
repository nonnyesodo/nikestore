import 'package:flutter/material.dart';
import 'package:nikestore/util/button.dart';

import '../util/otpcode.dart';
import 'drawer.dart';

class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.arrow_back_ios_new_outlined),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Center(
                child: Text(
                  'OTP Verification',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Center(
                child: Text('Please Check Your Email To See The \n'
                    '                  Verification Code'),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                'OTP Code ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Otp(text: '0'),
                  Otp(text: '9'),
                  Otp(text: '7'),
                  Otp(text: '4'),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Button(
                    text: 'Verify',
                    bcolor: Colors.blue,
                    btxtcolor: Colors.white,
                    press: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Draw(),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Resend code to '),
                  Text('00:30'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
