import 'package:flutter/material.dart';
import 'package:music_player/components/circle_button.dart';

class MusicControllerButtons extends StatelessWidget {
  const MusicControllerButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleButton(
          icon: Icons.skip_previous,
          onPressed: () {},
        ),
        CircleButton(
          height: 100,
          width: 100,
          icon: Icons.play_arrow,
          iconSize: 35,
          onPressed: () {},
        ),
        CircleButton(
          icon: Icons.skip_next,
          onPressed: () {},
        ),
      ],
    );
  }
}
