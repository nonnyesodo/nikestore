// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nikestore/ui/search.dart';

import 'package:nikestore/util/textfield.dart';

import '../util/category.dart';
import '../util/shoe.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => ZoomDrawer.of(context)!.toggle(),
                      child: Icon(Icons.menu)),
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 310,
                    child: TextField(
                      decoration: Ktextf.copyWith(
                        hintText: 'Looking for shoes',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: (() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Search(),
                          ),
                        );
                      }),
                      child: CircleAvatar(radius: 25, child: Icon(Icons.tune))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Select Category',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Category(
                    bcolor: Colors.white,
                    text: 'All Shoes',
                  ),
                  Category(
                    text: 'Outdoor',
                    bcolor: Colors.blue,
                  ),
                  Category(
                    text: 'Tennis',
                    bcolor: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Popular Shoes'),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Shoe(
                    sname: 'Nike Jordan',
                    sprice: '\$222.50',
                    image: 'images/jordan.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Shoe(
                    sname: 'Nike Air Max',
                    sprice: '\$752.00',
                    image: 'images/banner.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('New Arrivals'),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                height: 120,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Summer Sale',
                          style: TextStyle(),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Transform.rotate(
                          angle: -math.pi / 8,
                          child: Text('NEW!\n   V'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '15% OFF',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 31, 3, 76)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Transform.rotate(
                          alignment: Alignment.topLeft,
                          angle: -math.pi / 7,
                          child: Image(
                            image: AssetImage(
                              'images/banner.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
