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
            height: 100,
            color: Colors.blue,
            child: Center(
                child: const Text(
              'House Agreement',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )),
          ),
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
