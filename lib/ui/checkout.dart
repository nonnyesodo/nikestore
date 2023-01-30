import 'package:flutter/material.dart';
import 'package:nikestore/ui/drawer.dart';
import 'package:nikestore/ui/splash.dart';

import 'package:nikestore/util/button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 12.0,
            right: 12.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_back_ios))),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    'My Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Contact Information',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Contact(
                        dtext: 'Email',
                        picon: Icons.email,
                        sicon: Icons.edit,
                        utext: 'Nonnyesodo@gmail.com',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Contact(
                        picon: Icons.phone,
                        utext: '+234-811-732-5298         ',
                        dtext: 'Phone',
                        sicon: Icons.edit,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Address'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('1082 Airport Road Nigeria'),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://img.freepik.com/free-vector/street-map-desing-with-catering-sector-pins_23-2147618798.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 120,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'View Map',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.location_pin,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text('Payment Method'),
                      const SizedBox(
                        height: 15,
                      ),
                      Contact(
                        dtext: '*********06964629           ',
                        picon: Icons.add_card,
                        sicon: Icons.arrow_drop_down,
                        utext: 'Ddl Card',
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Total(
                        price: '\$753.95',
                        text: 'Subtotal',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Total(
                        price: '\$60.20',
                        text: 'Delivery',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 3,
                        height: 15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Total(
                        price: '\$814.15',
                        text: 'Total Cost',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: Button(
                            text: 'Checkout',
                            bcolor: Colors.blue,
                            btxtcolor: Colors.white,
                            press: () {
                              alert();
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void alert() {
    Alert(
        style: AlertStyle(
          isButtonVisible: false,
          isCloseButton: false,
        ),
        context: context,
        content: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 80,
              child: Image(
                image: AssetImage('images/succes.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Payment Is\n   Successful  ',
            ),
            SizedBox(
              height: 10,
            ),
            Button(
              text: 'Back To Shopping',
              bcolor: Colors.blue,
              btxtcolor: Colors.white,
              press: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Draw(),
                  ),
                );
              }),
            ),
          ],
        )).show();
  }
}

class Total extends StatelessWidget {
  String text;
  String price;

  Total({
    Key? key,
    required this.text,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Text(price),
      ],
    );
  }
}

class Contact extends StatelessWidget {
  IconData picon;
  IconData sicon;
  String utext;
  String dtext;

  Contact({
    Key? key,
    required this.picon,
    required this.sicon,
    required this.utext,
    required this.dtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(picon),
        const SizedBox(
          width: 20,
        ),
        Text(
          '$utext\n$dtext',
        ),
        const SizedBox(
          width: 110,
        ),
        Icon(sicon),
      ],
    );
  }
}
