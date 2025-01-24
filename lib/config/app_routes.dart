import 'package:projectbased/model/user.dart';
import 'package:projectbased/pages/edit_page.dart';
import 'package:projectbased/pages/home_page.dart';
import 'package:projectbased/pages/login_page.dart';
import 'package:projectbased/pages/main_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit': (context) => EditProfile(),
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const edit = '/edit';
}
