import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHeader(),
          _drawTopStoriesSection(),
          _drawRecentUpdate(),
        ],
      ),
    );
  }

  Widget _drawHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage("assets/images/place_holder_bg.jpg"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 48.0, right: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "How Terriers & Royals Gatecrached Final",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawTopStoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
          child: _createSectionTitle('Top Stories'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Card(
            child: Column(
              children: <Widget>[
                _storyCard(),
                drawDivider(),
                _storyCard(),
                drawDivider(),
                _storyCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _storyCard() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            width: 120,
            height: 120,
            child: Image(
              image: ExactAssetImage('assets/images/place_holder_bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                'The World Global Warming Annual Summit',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                maxLines: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Michael Adams',
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(
                          width: 8,
                        ),
                        Text('15 min')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget drawDivider() {
    return Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey.shade300,
    );
  }

  Widget _createSectionTitle(String title) {
    return Text(
      title,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),
    );
  }

  Widget _drawRecentUpdate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
          child: _createSectionTitle('Recent Update'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: Column(
            children: <Widget>[
              _drawRecentUpdateCard(Colors.deepOrange),
              _drawRecentUpdateCard(Colors.teal),
              SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }

  Widget _drawRecentUpdateCard(Color color) {
    return Card(
      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: ExactAssetImage('assets/images/place_holder_bg.jpg'),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 32, right: 32, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    'SPORT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 8, bottom: 8),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 8, right: 16, bottom: 16),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.access_time),
                    SizedBox(width: 10),
                    Text('15 min')
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
