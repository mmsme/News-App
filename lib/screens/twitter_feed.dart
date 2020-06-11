import 'package:flutter/material.dart';
import 'package:newsapp/shared_ui/navigation_drawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feed'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: NavigationView(),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  _createHeader(),
                  _createBody(),
                  _drawLine(),
                  _createFeet(),
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _createHeader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundImage:
                ExactAssetImage('assets/images/place_holder_bg.jpg'),
            radius: 24,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Christina Meyers',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 8),
                Text(
                  '@ch_meyers',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Fri, 12 May 2017 , 14.30',
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ],
        ),
      ],
    );
  }

  Widget _createBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
      child: Text(
        'We also talk about the future of work as the robots advance and we ask whether a retro phone',
        style: TextStyle(
          color: Colors.grey.shade900,
          fontSize: 18,
          height: 1.2,
        ),
      ),
    );
  }

  Widget _createFeet() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.repeat,
                  color: Colors.orange,
                  size: 28,
                ),
                onPressed: () {},
              ),
              Text(
                '25',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('SHARE', style: TextStyle(color: Colors.orange)),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OPEN', style: TextStyle(color: Colors.orange)),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawLine() {
    return Container(
      height: 1,
      color: Colors.grey.shade300,
      margin: EdgeInsets.only(top: 16),
    );
  }
}
