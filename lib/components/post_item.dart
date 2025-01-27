import 'package:flutter/material.dart';
import 'package:projectbased/config/app_config.dart';
import 'package:projectbased/data/model/post.dart';
import 'package:projectbased/styles/app_text.dart';

class postitem extends StatelessWidget {
  final Post post;
  const postitem({super.key, required this.post});

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
                '${post.owner?.firstname} ${post.owner?.lastname}',
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(height: 12),
          Image.network('${AppConfig.baseUrl} ${post.image}'),
          SizedBox(
            height: 14,
          ),
          Text(
            post.message ?? '',
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
