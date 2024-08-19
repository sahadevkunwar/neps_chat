import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import '../../core/Themes/theme.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Platform.isAndroid
          ? const Icon(
              Icons.arrow_back,
              color: primaryColor,
            )
          : const Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
            ),
    );
  }
}