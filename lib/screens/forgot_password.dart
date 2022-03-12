// import 'dart:async';
// import 'package:documentscan/screens/routes.dart';
// import 'package:documentscan/screens/widgets/painter.dart';
// //import 'package:documentscan/screens/widgets/text_field.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class ForgotPassword extends StatefulWidget {
//   const ForgotPassword({ Key? key }) : super(key: key);

//   @override
//   _ForgotPasswordState createState() => _ForgotPasswordState();
// }

// class _ForgotPasswordState extends State<ForgotPassword> {
//   @override
//   Widget build(BuildContext context) {
//    return Container(
//         color: Colors.white,
//         child: CustomPaint(
//           painter: LoginPaint(),
//           child: Scaffold(
//             backgroundColor: Colors.black.withOpacity(0.0),
//             appBar: AppBar(
//               leading: Padding(
//                 padding: const EdgeInsets.only(left: 18.0),
//                 child: IconButton(
//                   icon: Icon(
//                     Icons.arrow_back_ios,
//                     color: Colors.black,
//                   ),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               elevation: 0.0,
//               backgroundColor: Colors.black.withOpacity(0.0),
//               title: Container(),
//             ),
//             body: Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
//               child: ListView(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 18.0, left: 10.0),
//                     child: Text(
//                       "Dont worry, We have you covered",
//                       style: TextStyle(
//                           fontSize: 30.0,
//                           color: Colors.blue,
//                           fontFamily: 'Poppins-Bold'),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 100.0,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20.0),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 7,
//                           offset:
//                               const Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: TextField(
//                       keyboardType: TextInputType.emailAddress,
//                       textAlign: TextAlign.center,
//                       onChanged: (value) {
//                         //Do something with the user input.
//                         email = value;
//                       },
//                       decoration: InputDecoration(
//                         hintText: "Enter your new password",
//                         prefixIcon: Icon(Icons.email),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20.0),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20.0),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 7,
//                           offset:
//                               const Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: TextField(
//                       obscureText: true,
//                       textAlign: TextAlign.center,
//                       onChanged: (value) {
//                         //Do something with the user input.
//                         password = value;
//                       },
//                       decoration: InputDecoration(
//                         hintText: "Confirm your new password",
//                         prefixIcon: Icon(Icons.lock),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20.0),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   MaterialButton(
//                     minWidth: 200.0,
//                     height: 50.0,
//                     onPressed: () async {
//                       setState(() {
//                         showSpinner = true;
//                       });
//                       // log in user
//                       try {
//                         final loggedInUser =
//                             await _auth.signInWithEmailAndPassword(
//                                 email: email, password: password);
//                         if (loggedInUser != null) {
//                           Navigator.pushNamed(context, Routes.homescreen);
//                         }
//                       } catch (e) {
//                         print(e);
//                       }
//                       setState(() {
//                         showSpinner = false;
//                       });
//                     },
//                     color: Colors.blue,
//                     child: Text(
//                       "Signin",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.pushNamed(context, Routes.homescreen);
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Center(
//                         child: Text(
//                           "Forgot your Password?  Reset",
//                           style: TextStyle(
//                               color: Colors.black, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//     );
//   }
// }