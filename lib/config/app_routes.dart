import 'package:flutter/material.dart';
import 'package:projectbased/data/model/user.dart';
import 'package:projectbased/pages/edit_page.dart';
import 'package:projectbased/pages/home_page.dart';
import 'package:projectbased/pages/login_page.dart';
import 'package:projectbased/pages/main_page.dart';
import 'package:projectbased/providor/login_provider.dart';
import 'package:provider/provider.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => ChangeNotifierProvider(
          create: (context) => LoginProvider(),
          child: LoginPage(),
        ),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit': (context) => EditProfile(),
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const edit = '/edit';
}
