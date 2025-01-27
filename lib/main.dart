import 'package:flutter/material.dart';
import 'package:projectbased/config/app_routes.dart';
import 'package:projectbased/data/model/user.dart';
import 'package:projectbased/providor/app_repo.dart';
import 'package:projectbased/providor/post_provider.dart';
import 'package:projectbased/styles/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppRepo>(
          create: (context) => AppRepo(),
        ), // ChangeNotifierProvider
        ChangeNotifierProvider<PostProvider>(
          create: (context) => PostProvider(),
        ), // ChangeNotifierProvider
      ],
      child: MyApp(),
    ), // MultiProvider
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
