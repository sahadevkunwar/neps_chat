import 'package:flutter/material.dart';

import '../../core/Themes/theme.dart';

class CustomAppBarHeadingTitle extends StatelessWidget {
  const CustomAppBarHeadingTitle(
      {super.key, this.title, this.color = textColor});

  final String? title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: color,
            fontWeight: FontWeight.w600,
          ),
    );
  }
}