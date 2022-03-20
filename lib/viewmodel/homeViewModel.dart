import 'package:documentscan/utils/requests.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeViewModel extends ChangeNotifier{

  String processedText='';

  Future<void> processUrl(String url)async{
    final response=await getRequest('text-extractor/url'+url);
    if(response.statusCode==200){
      print(response.body);
    }
  }

}