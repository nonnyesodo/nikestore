import 'package:flutter/material.dart';
import 'package:nikestore/util/button.dart';
import 'package:nikestore/util/textfield.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Passwordr extends StatefulWidget {
  const Passwordr({super.key});

  @override
  State<Passwordr> createState() => _PasswordrState();
}

class _PasswordrState extends State<Passwordr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 55,
            right: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Forgot Password ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'Enter Your Email Acount To Reset \n                  Your passsword ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: Ktextf.copyWith(hintText: '*******'),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: Button(
                    text: 'Reset Password',
                    bcolor: Colors.blue,
                    btxtcolor: Colors.white,
                    press: () {
                      showalert();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showalert() {
    Alert(
        style: const AlertStyle(
          isButtonVisible: false,
          isCloseButton: false,
        ),
        context: context,
        content: Column(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.mark_email_read_outlined,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Check Your Email',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We Have Send Password Recovery\n              Code In Your Email',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        )).show();
  }
}
