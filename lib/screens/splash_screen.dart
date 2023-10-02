import 'dart:async';

import 'package:flutter/material.dart';
import 'package:burger_king/screens/home.dart';
import 'package:burger_king/theme/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MyHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: orange,
      body: Center(
          child: Image(
            height: 100,
            width: 100,
        image: AssetImage("lib/assets/logo.png"),
      )),
    );
  }
}
