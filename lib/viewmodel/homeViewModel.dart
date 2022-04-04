import 'dart:convert';

import 'package:documentscan/utils/requests.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:io';

class HomeViewModel extends ChangeNotifier {
  String processedText = '';
  List<TextSpan> textSpans=[];

  Future<void> processUrl(String url) async {
    final response = await postRequest('estimator/url?model_name=en2_471&sgm_name=en_crf&url=${url}');
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      final data = json.decode(response.body);
      for(int i=0;i<data.length;i++){
        if(data[i]['category']=='negative'){
          textSpans.add(TextSpan(
            text:data[i]['sentence'],
            style: TextStyle(color: Colors.black)
          ));
        }
        else{
          textSpans.add(TextSpan(
            text:data[i]['sentence'],
            style: TextStyle(color: Colors.green)
          ));
        }
      }
      print(data);
    }
    notifyListeners();
  }
}
