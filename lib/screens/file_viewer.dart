import 'dart:io';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:documentscan/screens/widgets/image_picker_type.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class ScreenArcs{
  File? image;
  ScreenArcs({this.image});
}
class FileViewer extends StatefulWidget {
 
  static const routeName = '/file_viewer';
  FileViewer({Key? key}) : super(key: key);

  @override
  _FileViewerState createState() => _FileViewerState();
}

class _FileViewerState extends State<FileViewer> {
  @override
  Widget build(BuildContext context) {
    ScreenArcs args = ModalRoute.of(context)!.settings.arguments as ScreenArcs;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Preview Image"),
          backgroundColor: Colors.black45,
        ),
        body: Center(
          child: Container(
            color: Colors.black12,
            height: 600.0,
            width: 900.0,
            // ignore: unnecessary_null_comparison
            child: args.image == null
                ? const Text("Preview Image")
                : Image.file(args.image!),
          ),
        ));
  }
}
