import 'package:flutter/material.dart';
import 'package:projectbased/config/app_routes.dart';
import 'package:projectbased/model/user.dart';
import 'package:projectbased/styles/app_colors.dart';
import 'package:projectbased/user_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserProvider(
      user: User(
        1,
        'test',
        'tedt',
        'mobile',
        'birthday',
        'gender',
        false,
      ),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.dark,
        ),
        initialRoute: '/',
        routes: AppRoutes.pages,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
