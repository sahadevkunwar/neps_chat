import 'package:flutter/material.dart';

import '../../../core/Themes/size.dart';
import '../../../core/Themes/theme.dart';
import '../../common_widget/custom_app_bar_heading.dart';
import '../../common_widget/custom_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.padding! * 0.035,
        ),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBarHeadingTitle(
                  title: "Edit Profile",
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.05,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: primaryColor,
                      radius: SizeConfig.padding! * 0.12,
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth! * 0.1,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: const [
                          BoxShadow(
                            color: secondaryColor,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.padding! * 0.05,
                          vertical: SizeConfig.padding! * 0.025,
                        ),
                        child: Text(
                          "Upload Image",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.05,
                ),
                Text(
                  'Full Name',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Gangaram Mahato",
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                Text(
                  'Phone Number',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "9863466990",
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                Text(
                  'Email Addres',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "example@gmail.com",
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                Text(
                  'Address',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Kathmandu",
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.08,
                ),
                CustomButton(
                  title: "Save Details",
                  width: 1,
                  height: 0.05,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                      ),
                  borderRadius: 12,
                  onPressed: () {},
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
