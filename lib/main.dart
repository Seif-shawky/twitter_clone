import 'package:flutter/material.dart';
import 'package:projectbased/pages/edit_page.dart';
import 'package:projectbased/pages/home_page.dart';
import 'package:projectbased/pages/login_page.dart';
import 'package:projectbased/pages/main_page.dart';
import 'package:projectbased/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
        '/edit': (context) => EditProfile(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
