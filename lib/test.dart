import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExampleHomePage(),
    );
  }
}

class ExampleHomePage extends StatefulWidget {
  @override
  _ExampleHomePageState createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage>
    with TickerProviderStateMixin {
  List<String> welcomeImages = [
    'lib/assets/1.jpg',
    'lib/assets/2.jpg',
    'lib/assets/3.jpg',
    'lib/assets/4.jpg',
    'lib/assets/5.jpg',
    'lib/assets/6.jpg',
  ];
  Color changer = Colors.green;
  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return new Scaffold(
      backgroundColor: changer,
      body: new Container(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: new TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: welcomeImages.length,
            stackNum: 3,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) => Card(
              child: Image.asset('${welcomeImages[index]}'),
            ),
            cardController: controller = CardController(),
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
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {
              /// Get orientation & index of swiped card!
            },
          ),
        ),
      ),
    );
  }
}
