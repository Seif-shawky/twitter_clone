import 'package:flutter/material.dart';
import 'package:projectbased/components/app_text_feild.dart';
import 'package:projectbased/components/tool_bar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Toolbar(title: 'Edit Profile'),
    body:Column(children: [
      AppTextFeild(hint: 'first name'),
      AppTextFeild(hint: 'last name'),
      AppTextFeild(hint: 'phone number'),
      AppTextFeild(hint: 'location'),
    
    ],
    ) ,
    );
  }
}