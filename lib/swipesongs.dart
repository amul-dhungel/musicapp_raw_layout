import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'updatesong.dart';

class Swipesongs extends StatefulWidget {
  @override
  _SwipesongsState createState() => _SwipesongsState();
}

class _SwipesongsState extends State<Swipesongs> {
  Color changer = Colors.green;
  List<String> albumpics = [
    'lib/assets/1.jpg',
    'lib/assets/2.jpg',
    'lib/assets/3.jpg',
    'lib/assets/4.jpg',
    'lib/assets/5.jpg',
    'lib/assets/6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        color: changer,
        height: MediaQuery.of(context).size.height * 0.4,
        child: TinderSwapCard(
          orientation: AmassOrientation.TOP,
          totalNum: albumpics.length,
          stackNum: 3,
          maxHeight: MediaQuery.of(context).size.height * 0.9,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
          minHeight: MediaQuery.of(context).size.height * 0.8,
          minWidth: MediaQuery.of(context).size.width * 0.8,
          cardBuilder: (context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                '${albumpics[index]}',
                fit: BoxFit.cover,
              ),
            ),
            elevation: 10,
          ),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            /// Get swiping card's alignment
            if (align.x < 0) {
              setState(() {
                changer = Colors.blue;
              });
            } else if (align.x > 0) {
              //Card is RIGHT swiping
              setState(() {
                changer = Colors.amber;
              });
            }
          },
        ),
      ),
    );
  }
}
