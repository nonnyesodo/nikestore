import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';

import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nikestore/ui/botomnav.dart';

import 'drawescreen.dart';

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) => ZoomDrawer(
        controller: _drawerController,
        menuScreen: const Drawerscreen(),
        mainScreen: const Bottomnav(),
        borderRadius: 40.0,
        showShadow: false,
        angle: -3.0,
        menuBackgroundColor: Colors.blue,
        slideWidth: MediaQuery.of(context).size.width * 0.6,
      );
}
