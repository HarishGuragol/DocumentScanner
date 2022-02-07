import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(100, 80),
        child: SafeArea(
          child: Container(
            height: 70,
            color: Colors.blue,
            child: Center(
                child: const Text(
              'House Agreement',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
      //drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // DrawerHeader(
            //   child: CircleAvatar(
            //     child: Image.asset(''),
            //   ),
            // ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 25.0),
              child: ListTile(
                title: Center(
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 13.0, left: 15.0, right: 15.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[600],
                  onPrimary: Colors.white,
                  minimumSize: Size(100, 50),
                ),
                onPressed: () {
                  //Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'extension',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding:
                  const EdgeInsets.only(top: 13.0, left: 15.0, right: 15.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange[600],
                  onPrimary: Colors.white,
                  minimumSize: Size(100, 50),
                ),
                onPressed: () {
                  //Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'hint',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 13.0, left: 15.0, right: 15.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[600],
                  onPrimary: Colors.white,
                  minimumSize: Size(100, 50),
                ),
                onPressed: () {
                  //Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'revocation',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 13.0, left: 15.0, right: 15.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo[500],
                  onPrimary: Colors.white,
                  minimumSize: Size(100, 50),
                ),
                onPressed: () {
                  //Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'termination',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05),
        child: Image.asset(
          'images/demo.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
