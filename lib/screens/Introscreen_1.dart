// ignore_for_file: prefer_const_constructors, deprecated_member_use

//import 'package:documentscan/main.dart';
import 'package:documentscan/screens/routes.dart';
import 'package:documentscan/screens/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';

class IntroScreen_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 230.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.splashscreen);
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.register);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 38.0),
                        child: Text(
                          "Skip",
                          style: skipTextbutton,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                padding: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
                width: double.infinity,
                child: Text(
                  "Take a Photo",
                  textAlign: TextAlign.left,
                  style: introtextheader,
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 100.0, right: 20.0, left: 23.0),
                width: double.infinity,
                child: Text(
                  "Take a photo of each page of your contract.",
                  textAlign: TextAlign.left,
                  style: introcontentstyle,
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Image(
                    image: AssetImage("images/intro1.jpeg"),
                    height: 295.0,
                    width: 295.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 38.0, bottom: 40.0),
                        child: ProgressBar(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Container(
                        height: 54.0,
                        // width: 0.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.intro2);
                          },
                          child: Text("Next"),
                          color: Color(0XFF4D9CE5),
                          textColor: Colors.white,
                          shape: CircleBorder(
                            side: BorderSide(
                              color: Color(0XFF4D9CE5),
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
