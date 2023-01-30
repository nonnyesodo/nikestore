// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../util/shoe.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back_ios)),
                ),
                Text(
                  'Favourite',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.favorite_outline_outlined)),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Favourite_edit(
                  image: 'images/jordan.png',
                  shoename: 'Nike Jordan',
                  sprice: '\$58.7',
                ),
                SizedBox(
                  width: 25,
                ),
                Favourite_edit(
                  image: 'images/banner.png',
                  shoename: 'Nike Air Max',
                  sprice: '\$37.8',
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Favourite_edit(
                  image: 'images/third.png',
                  shoename: 'Nike Club Max',
                  sprice: '\$47.7',
                ),
                SizedBox(
                  width: 25,
                ),
                Favourite_edit(
                  image: 'images/pngaaa.png',
                  shoename: 'Nike Air Max',
                  sprice: '\$57.6',
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class Favourite_edit extends StatelessWidget {
  String shoename;
  String image;
  String sprice;
  Favourite_edit({
    Key? key,
    required this.shoename,
    required this.image,
    required this.sprice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 200,
      width: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.favorite_border_sharp,
            size: 16,
          ),
          SizedBox(
            height: 100,
            child: Image(
              image: AssetImage(image),
            ),
          ),
          const Text(
            'Best sellers',
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            shoename,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sprice,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 7,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 7,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
