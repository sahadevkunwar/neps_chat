import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/Themes/size.dart';
import '../../../core/Themes/theme.dart';
import '../../common_widget/custom_app_bar_heading.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxHeight: SizeConfig.screenHeight! * 0.4,
                  maxWidth: SizeConfig.screenWidth!,
                ),
                decoration: const BoxDecoration(
                  color: primaryColor,
                ),
              ),
              Positioned(
                  left: SizeConfig.padding! * 0.05,
                  top: 50,
                  child: const CustomAppBarHeadingTitle(
                    title: "My Profile",
                    color: secondaryColor,
                  )),
              CircleAvatar(
                radius: SizeConfig.padding! * 0.1,
              ),
              Positioned(
                bottom: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Siddharth Singh',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      '9863466990',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'grmmahato12@gmail.com',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.01,
          ),
          Padding(
            padding: EdgeInsets.all(SizeConfig.padding! * 0.035),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(SizeConfig.padding! * 0.05),
                borderRadius: BorderRadius.circular(12.0),
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
              child: ListTile(
                title: Text(
                  "Saved",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                leading: const CircleAvatar(
                  backgroundColor: primaryColor,
                  child: Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: textColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(SizeConfig.padding! * 0.035),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(SizeConfig.padding! * 0.05),
                borderRadius: BorderRadius.circular(12.0),
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
              child: ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfileScreen())),
                title: Text(
                  "Edit Profile",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                leading: const CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
