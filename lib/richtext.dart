import 'package:flutter/material.dart';

class RichString extends StatelessWidget {
  String singerName;
  String numberOfSongs;

  RichString({this.singerName, this.numberOfSongs});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(children: [
        Text(
          '$singerName',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('$numberOfSongs'),
      ]),
    );
  }
}
