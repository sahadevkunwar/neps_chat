import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/Themes/size.dart';
import '../../../core/Themes/theme.dart';
import '../../common_widget/custom_back_button.dart';
import '../../common_widget/custom_button.dart';

import 'register_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                        const Align(
                          alignment: Alignment.topLeft,
                          child: CustomBackButton(),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.01,
                        ),
                        Text(
                          'Enter OTP',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text(
                          'Enter the One-Time Pin sent to your Email.',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: textSecondaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight! * 0.05,
                        ),
                        PinCodeTextField(
                          textInputAction: TextInputAction.done,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          autoFocus: true,
                          appContext: context,
                          pastedTextStyle: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: secondaryColor),
                          length: 6,
                          obscureText: true,
                          obscuringCharacter: '*',
                          blinkWhenObscuring: true,
                          animationType: AnimationType.fade,
                          validator: (v) {
                            if (v!.length < 3) {
                              return "I'm from validator";
                            } else {
                              return null;
                            }
                          },
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.underline,
                            fieldHeight: SizeConfig.screenHeight! * 0.05,
                            fieldWidth: SizeConfig.screenHeight! * 0.05,
                            activeColor: primaryColor,
                            activeFillColor: Colors.white,
                            inactiveFillColor: secondaryColor,
                            inactiveColor: secondaryColor,
                          ),
                          cursorColor: primaryColor,
                          animationDuration: const Duration(milliseconds: 300),
                          enableActiveFill: false,
                          keyboardType: TextInputType.number,
                          onCompleted: (v) {
                            debugPrint("Completed");
                          },
                          // onTap: () {
                          //   print("Pressed");
                          // },
                          onChanged: (value) {
                            debugPrint(value);
                          },
                          beforeTextPaste: (text) {
                            debugPrint("Allowing to paste $text");
                            //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                            //but you can show anything you want here, like your pop up saying wrong paste format or etc
                            return true;
                          },
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
                                builder: (context) => const RegisterScreen(),
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
                "Re-send code?",
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
