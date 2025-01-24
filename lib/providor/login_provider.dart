import 'package:flutter/material.dart';
import 'package:projectbased/data/reponse/login_reponse.dart';
import 'package:projectbased/data/service/login_service.dart';

class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';

  Future<LoginResponse> login() async {
    return LoginService(username, password).call();
  }
}
