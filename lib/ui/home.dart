import 'package:flutter/material.dart';
import 'package:nikestore/ui/cart.dart';
import 'package:nikestore/ui/checkout.dart';
import 'package:nikestore/ui/favourite.dart';
import 'package:nikestore/ui/forgetp.dart';
import 'package:nikestore/ui/search.dart';
import 'package:nikestore/ui/signuppage.dart';
import 'package:nikestore/ui/welcome.dart';
import 'package:nikestore/util/button.dart';
import 'package:nikestore/util/otpcode.dart';
import 'package:nikestore/util/textfield.dart';

import 'drawer.dart';
import 'otpscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                    onTap: (() => Navigator.pop(context)),
                    child: const Icon(Icons.arrow_back_ios_new_outlined)),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Hello Again!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                    "Fill Your Details Or Continue With\n                Social Media"),
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Email Address'),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: Ktextf.copyWith(
                hintText: 'nonnyesodo@gmail.com',
              )),
              const SizedBox(
                height: 20,
              ),
              Text('Password'),
              SizedBox(
                height: 10,
              ),

              TextField(
                  decoration: Ktextf.copyWith(
                      hintText: '***********',
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ))),

              const SizedBox(
                height: 20,
              ),
              //how to move text to end flutter?

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Passwordr(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Recovery Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 360,
                child: Button(
                    text: 'Sign In',
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
                height: 30,
              ),
              Googleb(),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('New User?', style: TextStyle(color: Colors.grey)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Signup(),
                        ),
                      );
                    },
                    child: const Text(
                      ' Create Account',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
