// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:projectbased/components/tool_bar.dart';
import 'package:projectbased/components/user_avatar.dart';
import 'package:projectbased/config/app_routes.dart';
import 'package:projectbased/styles/app_text.dart';
import 'package:projectbased/user_provider.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user =
        UserProvider.of(context)?.user;
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.edit);
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
          SizedBox(
            height: 15,
          ),
          UserAvatar(
            size: 110,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            '${user?.id} ${user?.firstname} ${user?.lastname}',
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
