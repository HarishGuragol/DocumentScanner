library image_picker_type;

import 'dart:io';

import 'package:documentscan/screens/apistatus.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

enum ImagePickerType { GALLERY, CAMERA }

class ImagePickerHelper extends StatelessWidget {
  ImagePickerHelper({Key? key, required this.onDone, required this.size})
      : super(key: key);

  final Function(File?) onDone;
  final Size size;
  TextEditingController url=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: unnecessary_new
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // ignore: unnecessary_new
          new ListTile(
            title: new Text('Gallery '),
            onTap: () async {
              getCroppedImage(ImagePickerType.GALLERY, size.height, size.width)
                  .then((img) async {
                Navigator.pop(context);
                onDone(img!);
              });
            },
          ),
          // ignore: unnecessary_new
          ListTile(
            title: new Text('Camera'),
            onTap: () async {
              getCroppedImage(ImagePickerType.CAMERA, size.height, size.width)
                  .then((img) async {
                Navigator.pop(context);
                onDone(img!);
              });
            },
          ),
          ListTile(
            title: new Text('Text'),
            onTap: () async {
              Navigator.pop(context);
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text('Text'),
                        content: TextField(
                          controller: url,
                          onChanged: (text) {},
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Submit'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ApiTransition(url.text)));
                            },
                          ),
                        ],
                      ));
            },
          ),
          ListTile(
            title: const Text('Cancel', style: TextStyle(color: Color(0XFF4D9CE5) )),
            onTap: () {
              Navigator.pop(context);
              onDone(null);
            },
          ),
        ],
      ),
    );
  }

  Future<File?> getCroppedImage(
      ImagePickerType type, double height, double width) async {
    final ImagePicker picker = ImagePicker();

    return picker
        .pickImage(
            source: type == ImagePickerType.CAMERA
                ? ImageSource.camera
                : ImageSource.gallery)
        .then((img) {
      return ImageCropper.cropImage(
          sourcePath: img!.path,
          maxHeight: height.toInt(),
          maxWidth: width.toInt(),
          aspectRatio: CropAspectRatio(
              ratioX: height.toDouble(), ratioY: width.toDouble()),
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
          ],
          // ignore: prefer_const_constructors
          androidUiSettings: AndroidUiSettings(
              toolbarTitle: 'Cropper',
              // ignore: prefer_const_constructors
              toolbarColor: Color(0XFF4D9CE5),
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          // ignore: prefer_const_constructors
          iosUiSettings: IOSUiSettings(
            minimumAspectRatio: 1.0,
          ));
    });
  }
}
