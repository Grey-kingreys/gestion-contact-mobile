import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile/config/env.dart';

class Api {
  static final String baseUrl = Env.apiUrl;
  static const String loginUrl = "/users/login";
  static const String meUrl = "/users/me";
  static const String allUrl = "/users/all";


  Future<void> login() async {
    
  }

  Future<List<dynamic>> all() async {
    String url = '$baseUrl$allUrl';
    final response = await http.get(
      Uri.parse(url),
      headers: {
        // 'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Erreur depuis l'api");
    }
  }


}