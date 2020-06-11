import 'package:flutter/material.dart';
import 'package:newsapp/shared_ui/navigation_drawer.dart';

class InstagramFeed extends StatefulWidget {
  @override
  _InstagramFeedState createState() => _InstagramFeedState();
}

class _InstagramFeedState extends State<InstagramFeed> {

  TextStyle _hashTagStyle = TextStyle(
    color: Colors.orange,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Feed'),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _drawHeader(),
                  _drawTitle(),
                  _drawHashTags(),
                  _drawBody(),
                  _drawFooter(),
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.grey),
              onPressed: () {},
            ),
            Transform.translate(
              offset: Offset(-8, 0),
              child: Text(
                '25',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _drawTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Text(
        'We also talk about the future of work as the robots',
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey.shade900,
        ),
      ),
    );
  }

  Widget _drawHashTags() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(
              child: Text('#advance', style: _hashTagStyle), onPressed: () {}),
          FlatButton(
              child: Text('#reto', style: _hashTagStyle), onPressed: () {}),
          FlatButton(
              child: Text('#instagram', style: _hashTagStyle), onPressed: () {})
        ],
      ),
    );
  }

  Widget _drawBody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.30,
      child: Image(
        image: ExactAssetImage('assets/images/place_holder_bg.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _drawFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
            onPressed: () {},
            child: Text(
              '10 Commments',
              style: _hashTagStyle,
            )),
        Row(
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  'SHARE',
                  style: _hashTagStyle,
                )),
            FlatButton(
                onPressed: () {},
                child: Text(
                  'OPEN',
                  style: _hashTagStyle,
                )),
          ],
        ),
      ],
    );
  }
}
