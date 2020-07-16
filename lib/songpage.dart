import 'package:flutter/material.dart';
import 'package:music_app/swipesongs.dart';

class Songpage extends StatefulWidget {
  @override
  _SongpageState createState() => _SongpageState();
}

class _SongpageState extends State<Songpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_left,
              size: 30,
              color: Colors.grey,
            ),
            Icon(
              Icons.mail,
              size: 30,
              color: Colors.grey,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Swipesongs(),
        ],
      ),
    );
  }
}
