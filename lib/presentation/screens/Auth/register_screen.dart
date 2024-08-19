import 'package:flutter/material.dart';

import '../../../core/Themes/size.dart';
import '../../../core/Themes/theme.dart';
import '../../common_widget/custom_button.dart';
import '../bottom_nav_bar/bottom_nav_bar_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.padding! * 0.035),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Icon(
                Icons.sports_baseball,
                size: SizeConfig.padding! * 0.1,
                color: primaryColor,
              ),
              Text(
                'Futsally',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
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
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding: EdgeInsets.all(SizeConfig.padding! * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        Text(
                          'Full Name',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor,
                                  ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            hintText: "Gangaram Mahato",
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        Text(
                          'Phone Number',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor,
                                  ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            hintText: "phone number",
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        Text(
                          'Email Address',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor,
                                  ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            hintText: "example@gmail.com",
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        Text(
                          'Address',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor,
                                  ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            hintText: "kathmandu",
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.05,
                        ),
                        CustomButton(
                          title: "Continue",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavBarScreen(),
                              ),
                            );
                          },
                          width: 1,
                          height: 0.05,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white,
                                  ),
                          borderRadius: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Text(
                "Need to Help?",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
