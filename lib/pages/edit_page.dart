import 'package:flutter/material.dart';
import 'package:projectbased/components/app_text_feild.dart';
import 'package:projectbased/components/tool_bar.dart';
import 'package:projectbased/components/user_avatar.dart';
import 'package:projectbased/styles/app_colors.dart';

enum Gender { none, male, female, other }

class EditProfile extends StatefulWidget {
  EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Edit Profile'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: UserAvatar(
                        size: 120,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                AppTextFeild(hint: 'first name'),
                SizedBox(
                  height: 16,
                ),
                AppTextFeild(hint: 'last name'),
                SizedBox(
                  height: 16,
                ),
                AppTextFeild(hint: 'phone number'),
                SizedBox(
                  height: 16,
                ),
                AppTextFeild(hint: 'location'),
                SizedBox(
                  height: 16,
                ),
                AppTextFeild(hint: 'birthday'),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                          title: Text('male'),
                          value: Gender.male,
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.male;
                            });
                          }),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: Text('female'),
                          value: Gender.female,
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.female;
                            });
                          }),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: Text('other'),
                          value: Gender.other,
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.other;
                            });
                          }),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
