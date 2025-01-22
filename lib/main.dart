import 'package:flutter/material.dart';
import 'package:projectbased/config/app_routes.dart';
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
      routes: AppRoutes.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
