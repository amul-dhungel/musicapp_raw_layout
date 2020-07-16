import 'package:flutter/material.dart';

class Genre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(context, '/songpage');
        },
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.blue,
      ),
      height: 80,
      width: 140,
    );
  }
}
