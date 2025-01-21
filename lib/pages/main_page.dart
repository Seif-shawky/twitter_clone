import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectbased/pages/home_page.dart';
import 'package:projectbased/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Opacity(
                  opacity: 0.5,
                  child: SvgPicture.asset(
                    'imageassets/home-svgrepo-com.svg',
                  )),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Opacity(
                  opacity: 0.4,
                  child: SvgPicture.asset(
                    'imageassets/favorite-svgrepo-com.svg',
                    height: 28,
                  )),
              label: 'fav'),
          BottomNavigationBarItem(
              icon: Opacity(
                  opacity: 0.6,
                  child: SvgPicture.asset(
                      'imageassets/add-circle-svgrepo-com.svg')),
              label: 'add post'),
          BottomNavigationBarItem(
              icon: Opacity(
                  opacity: 0.5,
                  child: SvgPicture.asset(
                      'imageassets/messages-3-svgrepo-com.svg')),
              label: 'messages'),
          BottomNavigationBarItem(
              icon: Opacity(
                  opacity: 0.5,
                  child: SvgPicture.asset('imageassets/user-svgrepo-com.svg')),
              label: 'add'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Favorite'),
    ),
    Center(
      child: Text('Add Post'),
    ),
    Center(
      child: Text('Messages'),
    ),
    ProfilePage(),
  ];
}
