import 'package:flutter/material.dart';
import 'package:projectbased/model/user.dart';

class AppRepo extends ChangeNotifier {
  String? _token;
  User? user;
}