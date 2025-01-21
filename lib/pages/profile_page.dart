import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:projectbased/components/tool_bar.dart';
import 'package:projectbased/pages/edit_page.dart';
import 'package:projectbased/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [ 
          PopupMenuButton<ProfileMenu>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    Navigator.of(context).pushNamed('/edit');
                  },
                  child: Text('edit'),
                ),
                PopupMenuItem(
                  child: Text('log out'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              'imageassets/woman.png',
              height: 90,
              width: 90,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Seif Shawky',
            style: AppText.header2,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'egypt',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '3',
                    style: AppText.header2,
                  ),
                  Text('post')
                ],
              ),
              Column(
                children: [
                  Text(
                    '5000',
                    style: AppText.header2,
                  ),
                  Text('Followers')
                ],
              ),
              Column(
                children: [
                  Text(
                    '10',
                    style: AppText.header2,
                  ),
                  Text('Following')
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
