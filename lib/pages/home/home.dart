import 'package:flutter/material.dart';
import 'package:music_player/pages/home/components/album_image.dart';
import 'package:music_player/components/circle_button.dart';
import 'package:music_player/components/app_text.dart';
import 'package:music_player/components/custom_app_bar.dart';
import 'package:music_player/pages/home/components/artist_avatar.dart';
import 'package:music_player/pages/home/components/music_controller_buttons.dart';
import 'package:music_player/pages/home/components/song_duration_slider.dart';
import 'package:music_player/pages/home/components/song_info.dart';
import 'package:music_player/pages/musics/musics.dart';

class Home extends StatelessWidget {
  static const routeName = '/';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.12),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: CustomAppBar(
                title: 'Playing Now',
                leftIcon: Icons.menu,
                leftOnPressed: () {
                  Navigator.pushNamed(context, Musics.routeName);
                },
                rightIcon: Icons.favorite,
                rightOnPressed: () {},
              ),
            ),
            Expanded(
              flex: 5,
              child: AlbumImage(),
            ),
            Expanded(
              flex: 2,
              child: SongInfo(),
            ),
            Expanded(
              flex: 2,
              child: SongDurationSlider(),
            ),
            Expanded(
              flex: 3,
              child: MusicControllerButtons(),
            ),
          ],
        ),
      ),
    );
  }
}
