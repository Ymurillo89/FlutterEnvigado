import 'dart:convert';
import 'package:http/http.dart' as http;


class AuthService {
  final String apiUrl = 'https://miclocal.com.co:9351/api';

  Future<bool> login(String username, String password) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': '*/*',
      'MIC-API-User': 'login',
      'MIC-API-AppKey': 'login',
      'MIC-API-Token': '9b2dba2e2a0aeedc9a198720da76e4502b6d379e',
    };

    final response = await http.post(Uri.parse('$apiUrl/Login/login'),
        body: jsonEncode({'username': username, 'password': password}),
        headers: headers);

    if (response.statusCode == 200) {
      final userData = jsonDecode(response.body);
      
    //  await _saveUserData(userData);
      return true;
    } else {
      return false;
    }
  }

  // Implementa métodos para registrar, verificar y cerrar sesión.
  
}
