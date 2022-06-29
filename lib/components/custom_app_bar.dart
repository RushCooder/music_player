import 'package:flutter/material.dart';

import 'app_text.dart';
import 'circle_button.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final String title;
  final VoidCallback leftOnPressed;
  final VoidCallback rightOnPressed;
  const CustomAppBar({
    required this.leftIcon,
    required this.title,
    required this.rightIcon,
    required this.leftOnPressed,
    required this.rightOnPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        CircleButton(
          icon: leftIcon,
          onPressed: leftOnPressed,
        ),
        AppText(title: title),
        CircleButton(
          icon: rightIcon,
          onPressed: rightOnPressed,
        ),
      ],
    );
  }
}
