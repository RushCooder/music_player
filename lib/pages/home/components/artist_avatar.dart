import 'package:flutter/material.dart';

class ArtistAvatar extends StatelessWidget {
  final Widget child;
  const ArtistAvatar({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(300),
        border: Border.all(
          width: 7,
          color: Colors.white.withOpacity(0.13),
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
        color: Colors.black,
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(300),
          child: child,
        ),
      ),
    );
  }
}
