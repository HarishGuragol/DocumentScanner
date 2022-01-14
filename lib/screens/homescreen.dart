// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          elevation: 0.0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text('My Documents'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Login(),
                  //   ),
                  // );
                },
                icon: Icon(
                  Icons.add_circle_outline_rounded,
                  size: 40.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Tap to add a new document",
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
