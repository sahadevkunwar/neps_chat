import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/Themes/size.dart';
import '../../../core/Themes/theme.dart';
import '../../common_widget/custom_button.dart';
import 'reset_password_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                          'Login',
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
                        TextFormField(
                          keyboardType: TextInputType.name,
                          obscureText: true,
                          decoration: InputDecoration(
                            isDense: true,
                            suffixIcon: const Icon(Icons.visibility_sharp),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(SizeConfig.padding!),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Password",
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResetPasswordScreen()));
                          },
                          splashColor: Colors.transparent,
                          child: Text(
                            'Forgot Password ?',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: textSecondaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.02,
                        ),
                        CustomButton(
                          title: "Log In",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New To Futsal?",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: textSecondaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up Now",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
