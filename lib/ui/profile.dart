// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back_ios)),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Done',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage(
                    'images/nonny.jpg',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'Esodo Chinonso',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'Change Profile Picture',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'First Name',
              ),
              Pcard(
                text: 'Esodo',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Last Name',
              ),
              Pcard(
                text: 'Chinonso',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Location',
              ),
              Pcard(
                text: 'Nigeria',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Mobile Number',
              ),
              Pcard(
                text: '+234 v    811-732-298',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Pcard extends StatelessWidget {
  String text;
  Pcard({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      shadowColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            const Icon(
              Icons.check,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
