import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../utils/constants.dart';
import '../utils/sha256_converter.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String email, String password) async {
    final hashedPassword = convertToSha256(password);
    final response = await http.post(
      Uri.parse(Constants.loginUrl),
      headers: {
        'Authorization': Constants.authHeader,
      },
      body: {
        'username': email,
        'password': hashedPassword,
        'grant_type': 'password'
      },
    );

    if (response.statusCode == 200) {
      _isAuthenticated = true;
    } else {
      _isAuthenticated = false;
      throw Exception('Invalid ID Password');
    }
    notifyListeners();
  }
}
