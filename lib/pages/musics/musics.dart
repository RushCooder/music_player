import 'package:flutter/material.dart';
import 'package:music_player/components/app_text.dart';
import 'package:music_player/components/circle_button.dart';
import 'package:music_player/components/custom_app_bar.dart';

class Musics extends StatelessWidget {
  static const routeName = '/music';
  const Musics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.12),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomAppBar(
                title: 'Musics List',
                leftIcon: Icons.arrow_back_ios_new,
                leftOnPressed: () {
                  Navigator.pop(context);
                },
                rightIcon: Icons.more_vert,
                rightOnPressed: () {},
              ),
            ),

            Expanded(
              flex: 6,
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  // shrinkWrap: true,

                  itemBuilder: (context, index) => ListTile(
                    // selected: index == 2 ? true : false,
                    // selectedTileColor: Colors.white.withOpacity(0.15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onTap: () {
                      print(index);
                    },
                    title: const AppText(title: 'Music List', isTitle: true),
                    subtitle: const AppText(title: 'Green day'),
                    trailing: CircleButton(
                      icon: Icons.play_arrow,
                      onPressed: () {},
                      height: 35,
                      width: 35,
                      iconSize: 18,
                    ),
                  ),
                  itemCount: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
