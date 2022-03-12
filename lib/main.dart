import 'package:documentscan/screens/apistatus.dart';
import 'package:documentscan/screens/display.dart';
import 'package:documentscan/screens/homescreen.dart';
import 'package:documentscan/screens/imageview.dart';
import 'package:documentscan/screens/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:documentscan/screens/file_viewer.dart';
import 'package:documentscan/screens/display.dart';
import 'package:documentscan/screens/Splashscreen.dart';
import 'package:documentscan/screens/Introscreen_1.dart';
import 'package:documentscan/screens/Introscreen_2.dart';
import 'package:documentscan/screens/Introscreen_3.dart';
import 'package:documentscan/screens/register.dart';
import 'package:documentscan/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Scan());
}

class Scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      //initialRoute: Routes.splashscreen,
      home: IntroScreen_3(),
      // routes: {
      //   Routes.splashscreen: (context) => SplashScreen(),
      //   Routes.intro1: (context) => IntroScreen_1(),
      //   Routes.intro2: (context) => IntroScreen_2(),
      //   Routes.intro3: (context) => IntroScreen_3(),
      //   Routes.login: (context) => Login(),
      //   // ignore: prefer_const_constructors
      //   Routes.register: (context) => Register(),
      //   Routes.homescreen: (context) => HomeScreen(),
      //   Routes.apistatus: (context) => ApiTransition(),
      //   Routes.fileviewer: (context) => FileViewer(),
      //   Routes.display: (context) => DisplayScreen(),
      //   Routes.imageview: (context) => ImageView(),
      // },
    );
  }
}
