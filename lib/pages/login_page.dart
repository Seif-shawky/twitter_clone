import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projectbased/config/app_routes.dart';
import 'package:projectbased/model/user.dart';
import 'package:projectbased/pages/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:projectbased/pages/main_page.dart';
import 'package:projectbased/user_provider.dart';

const baseurl = 'https://8e36791b-bae9-4235-a3c3-4437367edd37.mock.pstmn.io';

class LoginPage extends StatelessWidget {
  final loginroute = '$baseurl/login';
  var username = '';
  var password = '';
  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  'hello, welcome back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'login to continue',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                TextField(
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: InputDecoration(
                      hintText: 'username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5)),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                      hintText: 'password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5)),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          print('forgot is clicked');
                        },
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        child: Text('forgot password?'))),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () async {
                      final user = await dologin();
                      UserProvider.of(context)?.updateUser(user);
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.main);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black),
                    child: Text('log in'),
                  ),
                ),
                Spacer(),
                Text(
                  'or sign in with',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        print('google is clicked');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'imageassets/search.png',
                            width: 22,
                            height: 22,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('login with google')
                        ],
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        print('facebook is clicked');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'imageassets/facebook.png',
                            width: 22,
                            height: 22,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('login with facebook'),
                        ],
                      )),
                ),
                Row(
                  children: [
                    Text(
                      "dont have an account",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.amber,
                        ),
                        child: Text('sign up')),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
}
