import 'package:flutter/material.dart';
import 'package:projectbased/styles/app_text.dart';

class postitem extends StatelessWidget {
  final String user;
  const postitem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'imageassets/woman.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(height: 12),
          Image.asset('imageassets/images.jpeg'),
          SizedBox(
            height: 14,
          ),
          Text(
            'yes yea what eva',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
