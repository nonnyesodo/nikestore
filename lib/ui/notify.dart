import 'package:flutter/material.dart';

import '../util/cartshoe.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back_ios)),
                  Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.delete_outline))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Recent',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Noticcart(),
              SizedBox(
                height: 10,
              ),
              Noticcart(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Yesterday',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Noticcart(),
              SizedBox(
                height: 10,
              ),
              Noticcart()
            ],
          ),
        ),
      ),
    );
  }
}

class Noticcart extends StatelessWidget {
  const Noticcart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          color: Colors.white),
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Shoel(image: 'images/pngaaa.png'),
          SizedBox(
            width: 70,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  '                                          7 min ago',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'We Have New\nProucts With Offers',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text('\$364.95'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('\$260.00'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
