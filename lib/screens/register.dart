// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:documentscan/screens/routes.dart';
import 'package:documentscan/screens/widgets/painter.dart';
import 'package:documentscan/screens/widgets/text_field.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

// ignore: camel_case_types
class _RegisterState extends State<Register> {
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
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
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
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    "Hello! \nSignup to get started!",
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.blue,
                        fontFamily: 'Poppins'),
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
                CustomTextField(
                  hintText: "Confirm your password",
                  prefixIcon: Icon(Icons.lock),
                ),
                SizedBox(
                  height: 20.0,
                ),
                MaterialButton(
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.login);
                  },
                  color: Colors.blue,
                  child: Text(
                    "Signup",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Center(
                    child: Text(
                      "Already Have an Account? Signin",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
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
