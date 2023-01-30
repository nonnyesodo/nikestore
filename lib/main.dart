import 'package:flutter/material.dart';
import 'package:nikestore/ui/onboarding.dart';
import 'package:nikestore/ui/splash.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Nike',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      home: Splashpage(),
    ),
  );
}
