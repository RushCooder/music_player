import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String title;
  final double fontSize;
  final bool isTitle;
  const AppText({
    required this.title,
    this.fontSize = 16,
    this.isTitle = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: isTitle ? Colors.cyan : Colors.white.withOpacity(0.5),
        fontSize: fontSize,
        fontWeight: isTitle ? FontWeight.bold : FontWeight.normal,
        letterSpacing: isTitle ? 1.2 : 1,
      ),
    );
  }
}
