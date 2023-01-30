import 'package:flutter/material.dart';

class Shoe extends StatelessWidget {
  String sname;
  String sprice;
  String image;
  Shoe({
    Key? key,
    required this.sname,
    required this.sprice,
    required this.image,
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
            sname,
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
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
