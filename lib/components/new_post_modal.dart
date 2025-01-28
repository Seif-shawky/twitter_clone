import 'package:flutter/material.dart';
import 'package:projectbased/components/app_text_feild.dart';
import 'package:projectbased/providor/app_repo.dart';
import 'package:projectbased/providor/post_provider.dart';
import 'package:projectbased/styles/app_colors.dart';
import 'package:projectbased/styles/app_text.dart';
import 'package:provider/provider.dart';

class NewPostModal extends StatelessWidget {
  const NewPostModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Insert Message',
            style: AppText.header1,
          ),
          SizedBox(
            height: 16,
          ),
          AppTextFeild(
            hint: 'message...',
            onChange: (vlaue) {
              context.read<PostProvider>().message = vlaue;
            },
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'add image',
            style: AppText.header1,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text('upload form gallery'),
            ),
          ),
          Text('OR'),
          SizedBox(
            height: 16,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('camera'),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              context
                  .read<PostProvider>()
                  .createPost(context.read<AppRepo>().token!)
                  .then(
                (value) {
                  Navigator.of(context).pop();
                },
              );
            },
            child: Text('Create Post'),
          ),
        ],
      ),
    );
  }
}
