// ignore_for_file: prefer_const_constructors, deprecated_member_use

//import 'package:documentscan/main.dart';
import 'package:documentscan/screens/routes.dart';
import 'package:documentscan/screens/widgets/progress_bar.dart';
import 'package:flutter/material.dart';

class IntroScreen_3 extends StatelessWidget {
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
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
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
                  "See the Results!",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 100.0, right: 20.0, left: 20.0),
                width: double.infinity,
                child: Text(
                  "See important clauses your contract contains! ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Image(
                    image: AssetImage("images/intro3.jpeg"),
                    height: 300.0,
                    width: 300.0,
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
                          padding: const EdgeInsets.only(left: 38.0),
                          child: ProgressBar(
                            index: 2,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Container(
                        height: 50.0,
                        // width: 0.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.register);
                          },
                          child: Text("Next"),
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: CircleBorder(
                            side: BorderSide(
                              color: Colors.blue,
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
