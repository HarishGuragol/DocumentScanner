// ignore_for_file: prefer_const_constructors

import 'package:documentscan/screens/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    /*Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Routes.intro1);
    }); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/splashbg.jpeg"), fit: BoxFit.cover),
        ),
        child: Center(
            child: Image(
          image: AssetImage("images/logo.png"),
          height: 180.0,
          width: 180.0,
        ),
        ),
      ),
    );
  }
}
