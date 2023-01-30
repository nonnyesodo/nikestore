import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:nikestore/ui/favourite.dart';
import 'package:nikestore/ui/mychart.dart';
import 'package:nikestore/ui/notify.dart';
import 'package:nikestore/ui/profile.dart';
import 'package:nikestore/ui/welcome.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  Widget? child;
  @override
  void initState() {
    child = Welcome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: child,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(icon: Icons.home_outlined),
          FluidNavBarIcon(
            icon: Icons.favorite_outline,
          ),
          FluidNavBarIcon(
              icon: Icons.shopping_bag_outlined, backgroundColor: Colors.blue),
          FluidNavBarIcon(icon: Icons.notifications_outlined),
          FluidNavBarIcon(icon: Icons.person_outlined),
        ],
        onChange: _handleNavigationChange,
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          child = Welcome();
          break;
        case 1:
          child = const Favourite();
          break;
        case 2:
          child = const Mycart();
          break;
        case 3:
          child = const Notify();
          break;
        case 4:
          child = const Profile();
          break;
      }
      child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: child,
      );
    });
  }
}
