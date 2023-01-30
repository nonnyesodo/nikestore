import 'package:flutter/material.dart';
import 'package:nikestore/util/textfield.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (() => Navigator.pop(context)),
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    )),
                Text(
                  'Search',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              decoration: Ktextf.copyWith(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: 'Search Your Shoes',
                  suffixIcon: Icon(
                    Icons.mic_outlined,
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Shoes'),
            const SizedBox(
              height: 10,
            ),
            const Searcht(
              text: 'New Shoes',
            ),
            const Searcht(
              text: 'Nike Top Shoes',
            ),
            const Searcht(
              text: 'Nike Air Force',
            ),
            const Searcht(
              text: ' Shoes',
            ),
            const Searcht(
              text: 'Snakers Nike  Shoes',
            ),
            const Searcht(
              text: 'Regular Shoes',
            ),
          ],
        ),
      )),
    );
  }
}

class Searcht extends StatelessWidget {
  final String text;
  const Searcht({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Icon(Icons.lock_clock),
          SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
