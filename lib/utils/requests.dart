import 'package:documentscan/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<Response> getRequest(String url)async{
  final response=await http.get(Uri.parse(root+'?url=${url}'));
  return response;
}