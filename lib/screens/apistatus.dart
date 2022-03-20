import 'package:flutter/material.dart';

class ApiTransition extends StatefulWidget {
  String url;
  
  ApiTransition(this.url, {Key? key}) : super(key: key);

  @override
  _ApiTransitionState createState() => _ApiTransitionState();
}

class _ApiTransitionState extends State<ApiTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),

            // ignore: avoid_unnecessary_containers
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Image.asset(
                  'images/transition.jpeg',
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Analysing the data',
                style: TextStyle(
                  color: Color(0XFF4D9CE5),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            Text(
              'Fetching info...',
              style: const TextStyle(
                fontSize: 30,
                color: Color(0XFF4D9CE5),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Image.asset(
                  'images/arrow.png',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Color(0XFF4D9CE5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: const Center(child: Text('View Data')),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
