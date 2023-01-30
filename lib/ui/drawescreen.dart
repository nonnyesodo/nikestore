import 'package:flutter/material.dart';
import 'package:nikestore/util/menu_item.dart';

class Menuitem {
  static final profile = Item('Profile', Icons.person);
  static final mycart = Item('My Cart', Icons.shopping_bag_outlined);
  static final favourite = Item('Favourite', Icons.favorite_outline);
  static final order = Item('Orders', Icons.delivery_dining);
  static final notification = Item('Profile', Icons.notifications_outlined);
  static final setting = Item('Settings', Icons.settings);
  static final all = <Item>[
    profile,
    mycart,
    favourite,
    order,
    notification,
    setting,
  ];
}

class Drawerscreen extends StatefulWidget {
  const Drawerscreen({super.key});

  @override
  State<Drawerscreen> createState() => _DrawerscreenState();
}

class _DrawerscreenState extends State<Drawerscreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData.dark(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 23,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('images/nonny.jpg'),
                radius: 70,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Esodo Chinonso ',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Spacer(),
              ...Menuitem.all.map(buildmenu).toList(),
              Divider(
                thickness: 2,
                color: Colors.white,
                height: 2,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.logout),
                  ),
                  const Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ));
  }
}
