import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: _storyCard(),
        );
      },
      itemCount: 20,
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
}
