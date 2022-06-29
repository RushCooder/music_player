import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final double height;
  final double width;
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;

  const CircleButton({
    this.width = 50,
    this.height = 50,
    this.iconSize = 22,
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            // color: Colors.red,
            boxShadow: [
              BoxShadow(
                offset: const Offset(5, 5),
                spreadRadius: 3,
                blurRadius: 5,
                color: Colors.black.withOpacity(0.7),
              ),
              BoxShadow(
                offset: const Offset(-2, -2),
                spreadRadius: 1,
                blurRadius: 5,
                color: Colors.white.withOpacity(0.1),
              ),
            ],
            gradient: RadialGradient(
              colors: [
                Colors.black.withOpacity(0.7),
                // Colors.black.withOpacity(0.7),
                // Colors.black.withOpacity(0.7),
                // Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.6),
                // Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                // Colors.white,
              ],
            )),
        child: Icon(
          icon,
          color: Colors.white.withOpacity(0.5),
          size: iconSize,
        ),
      ),
    );
  }
}
