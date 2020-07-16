import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'collections.dart';
import 'genre.dart';
import 'richtext.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Channel',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              width: 140,
            ),
            Icon(
              Icons.search,
              color: Colors.grey[700],
              size: 30,
            ),
            Icon(
              Icons.add,
              color: Colors.grey[700],
              size: 30,
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Genre(),
                        SizedBox(
                          width: 20,
                        ),
                        Genre(),
                        SizedBox(
                          width: 20,
                        ),
                        Genre(),
                        SizedBox(
                          width: 20,
                        ),
                        Genre(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Collection',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                  fontSize: 25.0,
                ),
              ),
            ),

            //Grid view .

            Container(
                height: 420,
                width: 400,
                child: GridView.count(
                  childAspectRatio: 0.7,
                  crossAxisCount: 3,
                  children: List.generate(
                    10,
                    (index) => Collections(
                      singerName: 'Hendrix',
                      numberOfSongs: 'Songs 20',
                    ),
                  ),
                )),
          ],
        ),
      ),

      // bottom navigation bar

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              size: 30,
            ),
            title: Text(''),
          )
        ],
      ),
    );
  }
}
