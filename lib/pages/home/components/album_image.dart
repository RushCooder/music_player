import 'package:flutter/material.dart';

import 'artist_avatar.dart';

class AlbumImage extends StatelessWidget {
  const AlbumImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ArtistAvatar(
        child: Image.asset(
          'images/cover.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
