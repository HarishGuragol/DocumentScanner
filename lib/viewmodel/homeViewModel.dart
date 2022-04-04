import 'dart:convert';

import 'package:documentscan/utils/requests.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:io';

class HomeViewModel extends ChangeNotifier {
  String processedText = '';

  Future<void> processUrl(String url) async {
    final response = await postRequest('text-extractor/url?url=' + url);
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      final data = json.decode(response.body);
      print(data);
      this.processedText = data['processed_text'];
    }
    notifyListeners();
  }
}
