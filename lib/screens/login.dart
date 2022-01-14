// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:documentscan/screens/routes.dart';
import 'package:documentscan/screens/widgets/painter.dart';
import 'package:documentscan/screens/widgets/text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


















// ignore: camel_case_types
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: LoginPaint(),
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.0),
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
            backgroundColor: Colors.black.withOpacity(0.0),
            title: Container(),
          ),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, left: 10.0),
                  child: Text(
                    "Hello Again! \nWelcome back",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.blue,
                        fontFamily: 'Poppins-Bold'),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                CustomTextField(
                  hintText: "Enter your email",
                  prefixIcon: Icon(Icons.email),
                  
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomTextField(
                  hintText: "Enter your password",
                  prefixIcon: Icon(Icons.lock),
                  
                ),
                SizedBox(
                  height: 20.0,
                ),
                MaterialButton(
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.homescreen);
                  },
                  color: Colors.blue,
                  child: Text(
                    "Signin",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.homescreen);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Forgot your Password?  Reset",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

