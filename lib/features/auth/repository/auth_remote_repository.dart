import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseUrl = "http://localhost:8000/auth";

class AuthRemoteRepository {
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      var res = await http.post(
        Uri.parse("$baseUrl/signUp"),
        headers: {"Content-Type": "application/json"},
      );

      if (res.statusCode != 201) {
        throw jsonDecode(res.body)["message"];
      } else {
        print(jsonDecode(res.body));
      }
    } catch (error) {}
  }
}
