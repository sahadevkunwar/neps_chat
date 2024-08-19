import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/Themes/size.dart';
import '../../../core/Themes/theme.dart';
import '../../common_widget/custom_back_button.dart';
import '../../common_widget/custom_button.dart';

import 'otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: CustomBackButton(),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        Text(
                          'Enter Your Email',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text('We will send you 6 digit verification code',
                            style: Theme.of(context).textTheme.bodyLarge!),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.05,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10),
                          ],
                          decoration: InputDecoration(
                            isDense: true,
                          //prefix: Text("+977"),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(SizeConfig.padding!),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "exapmle@gmail.com",
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
                                    builder: (context) => const OtpScreen()));
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
                      color: textSecondaryColor,
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
