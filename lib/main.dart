import 'package:documentscan/screens/apistatus.dart';
import 'package:documentscan/screens/display.dart';
import 'package:documentscan/screens/homescreen.dart';
import 'package:documentscan/screens/imageview.dart';
import 'package:documentscan/screens/routes.dart';
import 'package:documentscan/viewmodel/homeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:documentscan/screens/file_viewer.dart';
import 'package:documentscan/screens/Splashscreen.dart';
import 'package:documentscan/screens/Introscreen_1.dart';
import 'package:documentscan/screens/Introscreen_2.dart';
import 'package:documentscan/screens/Introscreen_3.dart';
import 'package:documentscan/screens/register.dart';
import 'package:documentscan/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Scan());
}

class Scan extends StatelessWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0XFF4D9CE5),
        backgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home:MultiProvider(
        providers: [
          Provider<HomeViewModel>(create: (_)=>HomeViewModel(),)
        ],
        child: HomeScreen(),
      ),
      //home: IntroScreen_3(),
      routes: {
        Routes.splashscreen: (context) => SplashScreen(),
        Routes.intro1: (context) => IntroScreen_1(),
        Routes.intro2: (context) => IntroScreen_2(),
        Routes.intro3: (context) => IntroScreen_3(),
        Routes.login: (context) => Login(),
        Routes.register: (context) => const Register(),
        Routes.homescreen: (context) => HomeScreen(),
        Routes.fileviewer: (context) => FileViewer(),
        Routes.display: (context) => DisplayScreen(),
        Routes.imageview: (context) => ImageView(),
      },
    );
  }
}
