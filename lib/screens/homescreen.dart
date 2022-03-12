// ignore_for_file: prefer_const_constructors
import 'dart:io';
import 'package:documentscan/screens/file_viewer.dart';
import 'package:flutter/material.dart';
import 'package:documentscan/screens/widgets/image_picker_type.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textFieldController = TextEditingController();

  File? _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        elevation: 0.0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text('My Documents'),
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return SafeArea(
                          child: ImagePickerHelper(
                            // isSave: true,  //if you want to save image in directory
                            size: Size(900, 600),
                            onDone: (file) {
                              if (file == null) {
                                print(null);
                              } else {
                                setState(() {
                                  _image = file;
                                  Navigator.pushNamed(context, FileViewer.routeName,
                                      arguments: ScreenArcs(
                                        image: _image,
                                      ));
                                  
                                });
                              }
                            },
                          ),
                        );

                        /// If you dont want to safe area you can remove it
                      });
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
