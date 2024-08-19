import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/Themes/size.dart';
import '../../../core/Themes/theme.dart';
import '../../common_widget/custom_button.dart';

import 'login_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.padding! * 0.035),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text(
                          'Reset Password',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
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
                            hintText: "example@gmail.com",
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.02,
                        ),
                        CustomButton(
                          title: "Send OTP",
                          onPressed: () {},
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Back To Login",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
