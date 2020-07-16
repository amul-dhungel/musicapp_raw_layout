import 'package:flutter/material.dart';
import 'package:music_app/richtext.dart';

class Collections extends StatelessWidget {
  String singerName;
  String numberOfSongs;
  Collections({this.singerName, this.numberOfSongs});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: 113,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
          RichString(
            singerName: '$singerName',
            numberOfSongs: '$numberOfSongs',
          ),
        ],
      ),
    );
  }
}
