import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:projectbased/config/app_config.dart';
import 'package:projectbased/data/reponse/login_reponse.dart';

class LoginService {
  final String username;
  final String password;

  LoginService(this.username, this.password);
  Future<LoginResponse> call() async{
    final result = await  http.post(
      Uri.parse('${AppConfig.baseUrl}/login'),
    
    body: jsonEncode({
      'username' : username,
      'password' : password,
    },),);
    return LoginResponse.fromJson(jsonDecode(result.body));
  }
}
