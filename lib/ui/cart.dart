import 'package:flutter/material.dart';
import 'package:nikestore/util/button.dart';

import '../util/cartshoe.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                  ),
                  Text(
                    'Sneaker Shop',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Nike Air Max 270\nEssential ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Men\'s Shoes'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '\$179.39',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/Hero.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 200,
                width: double.infinity,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Shoel(
                    image: 'images/Hero.png',
                  ),
                  Shoel(
                    image: 'images/Hero.png',
                  ),
                  Shoel(
                    image: 'images/Hero.png',
                  ),
                  Shoel(
                    image: 'images/Hero.png',
                  ),
                  Shoel(
                    image: 'images/Hero.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'The Max Air 270 Unit Delivers Unrivaled, All - Day\nComfort.The Sleek,Running-Inspired Design\nRoots You to everthing Nike.....',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Read More',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 0,
                  ),
                  const Icon(
                    Icons.favorite_outline_outlined,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: Button(
                      text: 'Add To Cart',
                      bcolor: Colors.blue,
                      btxtcolor: Colors.white,
                      press: () {},
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
