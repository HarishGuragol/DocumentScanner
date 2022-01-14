import 'dart:io';

import 'package:flutter/material.dart'; 
import 'package:documentscan/libraries/image_picker_type.dart';

class FileViewer extends StatefulWidget {
  @override
  _FileViewerState createState() => _FileViewerState();
}

class _FileViewerState extends State<FileViewer> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample Imagepicker Widget"),
          backgroundColor: Colors.black45,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Container(
                  color: Colors.black12,
                  height: 600.0,
                  width: 900.0,
                  // ignore: unnecessary_null_comparison
                  child: _image == null
                      ? Text("Still waiting!")
                      : Image.file(_image!),
                ),
                TextButton(
                  //color: Colors.deepOrangeAccent,
                  child: Text(
                    "Select Image",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onPressed: () {
                    // show bottom sheet to select image optionr
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
                                  });
                                }
                              },
                            ),
                          );

                          /// If you dont want to safe area you can remove it
                        });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
