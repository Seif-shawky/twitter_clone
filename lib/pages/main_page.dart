import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectbased/pages/home_page.dart';
import 'package:projectbased/pages/profile_page.dart';
import 'package:projectbased/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: pages[currentIndex.index],
        bottomNavigationBar: MyBottomNavigation(
          currentIndex: currentIndex,
          onTap: (Menus value) {
            setState(() {
              currentIndex = value;
            });
          },
        ));
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

enum Menus { home, favorite, add, messages, user }

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;

  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.home),
                      icon: SvgPicture.asset(
                        'imageassets/home-svgrepo-com.svg',
                        colorFilter: ColorFilter.mode(
                            currentIndex == Menus.home
                                ? Colors.black
                                : Colors.black.withOpacity(0.3),
                            BlendMode.srcIn),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.favorite),
                      icon: SvgPicture.asset(
                        'imageassets/favorite-svgrepo-com.svg',
                        colorFilter: ColorFilter.mode(
                            currentIndex == Menus.favorite
                                ? Colors.black.withOpacity(0.9)
                                : Colors.black.withOpacity(0.3),
                            BlendMode.srcIn),
                        height: 28,
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.messages),
                      icon: SvgPicture.asset(
                        'imageassets/messages-3-svgrepo-com.svg',
                        colorFilter: ColorFilter.mode(
                            currentIndex == Menus.messages
                                ? Colors.black
                                : Colors.black.withOpacity(0.3),
                            BlendMode.srcIn),
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () => onTap(Menus.user),
                      icon: SvgPicture.asset(
                        'imageassets/user-svgrepo-com.svg',
                        colorFilter: ColorFilter.mode(
                            currentIndex == Menus.user
                                ? Colors.black
                                : Colors.black.withOpacity(0.3),
                            BlendMode.srcIn),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 64,
                height: 64,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.primary, shape: BoxShape.circle),
                child: SvgPicture.asset('imageassets/add-svgrepo-com.svg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
