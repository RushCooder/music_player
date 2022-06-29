import 'package:flutter/material.dart';
import 'package:music_player/components/app_text.dart';

class SongInfo extends StatelessWidget {
  const SongInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: AppText(
              title: 'Know Your Enemy',
              isTitle: true,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: AppText(
              title: 'Green Day',
            ),
          ),
        ),
      ],
    );
  }
}
