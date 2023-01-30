import 'package:flutter/material.dart';
import 'package:nikestore/ui/checkout.dart';
import 'package:nikestore/util/button.dart';
import 'package:nikestore/util/cartshoe.dart';

class Mycart extends StatefulWidget {
  const Mycart({super.key});

  @override
  State<Mycart> createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back_ios_new)),
                  SizedBox(
                    width: 130,
                  ),
                  Text('My Cart'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text('3 Item'),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        color: Colors.blue),
                    height: 80,
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              i++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '$i',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              i--;
                            });
                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Cartadd()
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Cartadd(),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        color: Colors.red),
                    height: 80,
                    width: 50,
                    child: Icon(
                      Icons.delete_outline,
                      size: 40,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(height: 80, width: double.infinity, child: Cartadd()),
              SizedBox(
                height: 150,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Total(text: 'Subtotal', price: '\$753.95'),
                    SizedBox(
                      height: 20,
                    ),
                    Total(text: 'Delivery', price: '\$60.20'),
                    Divider(),
                    Total(text: 'Total Cost', price: '\$814.15'),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Button(
                          text: 'Checkout',
                          bcolor: Colors.blue,
                          btxtcolor: Colors.white,
                          press: (() {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Checkout(),
                              ),
                            );
                          })),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cartadd extends StatelessWidget {
  const Cartadd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          color: Colors.white),
      height: 80,
      width: 300,
      child: Row(
        children: [
          Shoel(image: 'images/pngaaa.png'),
          SizedBox(
            width: 50,
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text('Nike Club Max'),
              SizedBox(
                height: 10,
              ),
              Text('\$584.95'),
            ],
          )
        ],
      ),
    );
  }
}
