import 'package:flutter/material.dart';
import 'package:music_player/pages/home/home.dart';
import 'package:music_player/pages/musics/musics.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => const Home(),
        Musics.routeName: (context)  => const Musics(),
      },
    );
  }
}
