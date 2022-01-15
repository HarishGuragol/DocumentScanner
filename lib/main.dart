import 'package:documentscan/screens/homescreen.dart';
import 'package:documentscan/screens/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:documentscan/screens/Splashscreen.dart';
import 'package:documentscan/screens/Introscreen_1.dart';
import 'package:documentscan/screens/Introscreen_2.dart';
import 'package:documentscan/screens/Introscreen_3.dart';
import 'package:documentscan/screens/register.dart';
import 'package:documentscan/screens/login.dart';

void main() => runApp(Scan());

class Scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashscreen,
      routes: {
        Routes.splashscreen: (context) => SplashScreen(),
        Routes.intro1: (context) => IntroScreen_1(),
        Routes.intro2: (context) => IntroScreen_2(),
        Routes.intro3: (context) => IntroScreen_3(),
        Routes.login: (context) => Login(),
        // ignore: prefer_const_constructors
        Routes.register: (context) => Register(),
        Routes.homescreen: (context) => HomeScreen(),
      },
    );
  }
}
