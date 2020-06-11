import 'package:flutter/material.dart';
import 'package:newsapp/models/NavMenuItem.dart';
import 'package:newsapp/screens/facebook_feed.dart';
import 'package:newsapp/screens/headline_news.dart';
import 'package:newsapp/screens/home_screen.dart';
import 'package:newsapp/screens/instagram_feed.dart';
import 'package:newsapp/screens/twitter_feed.dart';

class NavigationView extends StatefulWidget {
  @override
  _NavigationViewState createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  List<navMenuItem> menuItems = [
    navMenuItem('Explore', () => HomeScreen()),
    navMenuItem('HeadLine News', () => HeadlinesNews()),
    navMenuItem('Twitter Feed', () => TwitterFeed()),
    navMenuItem('Instagram Feed', () => InstagramFeed()),
    navMenuItem('Facebook Feed', () => FacebookFeed())
  ];

  List<String> navMenu = [
    'Explore',
    'HeadLine News',
    'Read Later',
    'Videos',
    'Photos',
    'Settings',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(top: 75, left: 24),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                  menuItems[position].name,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey.shade600,
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              menuItems[position].destination()));
                },
              ),
            );
          },
          itemCount: menuItems.length,
        ),
      ),
    );
  }
}
