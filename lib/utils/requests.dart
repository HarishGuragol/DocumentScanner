import 'package:documentscan/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<Response> getRequest(String url) async {
  final response = await http.get(Uri.parse(root + url));
  return response;
}

Future<Response> postRequest(String url) async {
  final response = await http.post(Uri.parse(root+url),
  headers: {
    'api_key':'2hUfzP1AgJ'
  }
  );
  return response;
}
