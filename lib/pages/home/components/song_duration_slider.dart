import 'package:flutter/material.dart';
import 'package:music_player/components/app_text.dart';

class SongDurationSlider extends StatelessWidget {
  const SongDurationSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          // bottom: 0,
          top: 0,
          bottom: 20,
          left: 22,
          right: 22,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppText(title: '1:30'),
              AppText(title: '3:00'),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Slider(
            value: 50,
            max: 100,
            min: 0,
            label: 'Seek',
            onChanged: (double value) {},
            activeColor: Colors.cyanAccent,
            inactiveColor: Colors.white.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
