import 'package:flutter/material.dart';
import 'package:nikestore/ui/welcome.dart';
import 'package:nikestore/util/button.dart';
import 'package:nikestore/util/textfield.dart';

import 'otpscreen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                    onTap: (() => Navigator.pop(context)),
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'Register Account',
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
              Text('Your Name '),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: Ktextf.copyWith(hintText: '******'),
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Email Address'),
              SizedBox(
                height: 10,
              ),
              TextField(decoration: Ktextf.copyWith(hintText: 'xyz@gmail.com')),
              const SizedBox(
                height: 20,
              ),
              const Text('Password'),
              const SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: Ktextf.copyWith(
                hintText: '........',
                suffixIcon: const Icon(Icons.remove_red_eye_sharp),
              )),
              const SizedBox(
                height: 30,
              ),
              //how to move text to end flutter?

              Button(
                  text: 'Sign Up',
                  bcolor: Colors.blue,
                  btxtcolor: Colors.white,
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Welcome(),
                      ),
                    );
                  }),
              const SizedBox(
                height: 30,
              ),
              const Googleb(),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already Have Account?',
                      style: TextStyle(color: Colors.grey)),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Otpscreen(),
                        ),
                      );
                    },
                    child: const Text(
                      ' Log In',
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

class Googleb extends StatelessWidget {
  const Googleb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
              width: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text("Sign Up With Google",
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
