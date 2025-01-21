import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectbased/components/post_item.dart';
import 'package:projectbased/components/tool_bar.dart';
import 'package:projectbased/styles/app_colors.dart';
import 'package:projectbased/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> users = List.generate(10, (index) => 'user $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Seifs test app',
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'imageassets/location-pin-alt-1-svgrepo-com.svg',
              height: 35,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return postitem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 9,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < (10); i++) {
      users.add('user number $i');
    }
  }
}
