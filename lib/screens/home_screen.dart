import 'package:flutter/material.dart';
import 'package:newsapp/shared_ui/navigation_drawer.dart';
import 'home_tabs/favourites.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/whats_new.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum PopOutMenu { HELP, ABOUT, CONTACT, SETTINGS }

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expolre"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          _popOutMenu(context)
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: "WHAT'S NEW",
            ),
            Tab(
              text: "POULAR",
            ),
            Tab(
              text: "FAVOURITES",
            )
          ],
          controller: _tabController,
        ),
      ),
      drawer: NavigationView(),
      body: Center(
        child: TabBarView(
          children: <Widget>[WhatsNew(), Popular(), Favourites()],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget _popOutMenu(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.ABOUT,
            child: Text('About'),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.CONTACT,
            child: Text('Contact'),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.HELP,
            child: Text('Help'),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.SETTINGS,
            child: Text('Settings'),
          ),
        ];
      },
      onSelected: (PopOutMenu menu) {
        //TODO :
      },
    );
  }
}
