import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class APIService {
  final _client = http.Client();
  var timeOut = const Duration(seconds: 60);

  http.Client get client {
    SmartDialog.showLoading();
    return _client;
  }

  Future<Map<String, String>> requestHeaders() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString('token') ?? '';
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  void handleError(int statusCode) {
    String error = '';
    switch (statusCode) {
      case 400:
        error = "Bad Request";
        break;
      case 401:
        error = "Unauthorized";
        break;
      case 403:
        error = "Invalid credentials";
        break;
      case 404:
        error = "Not Found";
        break;
      case 408:
        error = "Connection Timeout";
        break;
      case 500:
        error = "Internal Server Error";
        break;
      default:
        error = "Error occurred while communicating with server";
        break;
    }
  }

  void handleUncaughtError() {
    //TODO: showDialog when error;
  }
}
