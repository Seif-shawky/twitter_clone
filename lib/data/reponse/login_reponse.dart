import 'dart:developer';

import 'package:projectbased/data/model/user.dart';

class LoginResponse {
  final User user;
  final String? token;

  LoginResponse(this.user, this.token);

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    log(json.toString());
    return LoginResponse(
      User.fromJson(json['data']),
      json['token'],
    );
  }
}
