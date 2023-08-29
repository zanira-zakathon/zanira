import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class APIService {
  final _client = http.Client();
  var timeOut = const Duration(seconds: 60);

  http.Client get client {
    return _client;
  }

  Future<Map<String, String>> requestHeaders() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString('token')??'';
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }
}
