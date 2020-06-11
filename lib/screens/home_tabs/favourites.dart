import 'dart:math';

import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  List<Color> colorList = [
    Colors.teal.shade800,
    Colors.amber,
    Colors.red.shade700,
    Colors.indigo.shade800,
    Colors.blue.shade700,
    Colors.deepPurple.shade800,
    Colors.deepOrange.shade800,
    Colors.amberAccent.shade700,
    Colors.tealAccent.shade700,
    Colors.red.shade900,
    Colors.green.shade800,
  ];

  Random rnd = Random();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                _authorRow(),
                SizedBox(height: 10),
                _newsItemRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/place_holder_bg.jpg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.only(right: 15),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Michel Adams'),
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    Text('15 min'),
                    SizedBox(width: 10),
                    Text(
                      'Life style',
                      style: TextStyle(
                        color: colorList[rnd.nextInt(10)],
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.bookmark_border,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: ExactAssetImage('assets/images/place_holder_bg.jpg'),
            fit: BoxFit.cover,
          )),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Tech Tent: Old phones and safe social',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We also talk about the future of work as the robots advance and we ask whether a retro phone',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  height: 1.5,
                  fontSize: 16
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
