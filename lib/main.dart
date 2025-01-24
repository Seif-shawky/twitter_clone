import 'package:flutter/material.dart';
import 'package:projectbased/config/app_routes.dart';
import 'package:projectbased/model/user.dart';
import 'package:projectbased/providor/app_repo.dart';
import 'package:projectbased/styles/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppRepo>(
      create: (context) => AppRepo(),
      child: MyApp(),
    ),
  );
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
