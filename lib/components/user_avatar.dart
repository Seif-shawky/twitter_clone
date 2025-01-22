import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      child: Image.asset(
        'imageassets/c0749b7cc401421662ae901ec8f9f660.jpg',
        height: size,
        width: size,
      ),
    );
  }
}
