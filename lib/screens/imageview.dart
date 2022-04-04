import 'package:documentscan/viewmodel/homeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageView extends StatefulWidget {
  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        backgroundColor: Colors.blue[100],
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
              child: const ListTile(
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
                  minimumSize: const Size(100, 50),
                ),
                onPressed: () {
                  //Navigator.pushNamed(context, '/');
                },
                child: const Text(
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
                  minimumSize: const Size(100, 50),
                ),
                onPressed: () {
                  //Navigator.pushNamed(context, '/');
                },
                child: const Text(
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
                  minimumSize: const Size(100, 50),
                ),
                onPressed: () {
                  //Navigator.pushNamed(context, '/');
                },
                child: const Text(
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
                  minimumSize: const Size(100, 50),
                ),
                onPressed: () {
                  //Navigator.pushNamed(context, '/');
                },
                child: const Text(
                  'termination',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "House Agreement",
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05),
          child: SingleChildScrollView(
            child: Text(
            context.watch<HomeViewModel>().processedText))
          ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconSize: 24.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
            label: 'Share',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.black,
            ),
            label: 'Reminder',
          ),
        ],
      ),
    );
  }
}
