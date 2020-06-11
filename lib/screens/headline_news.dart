import 'package:flutter/material.dart';
import 'package:newsapp/shared_ui/navigation_drawer.dart';

import 'home_tabs/favourites.dart';
import 'home_tabs/popular.dart';

class HeadlinesNews extends StatefulWidget {
  @override
  _HeadlinesNewsState createState() => _HeadlinesNewsState();
}

class _HeadlinesNewsState extends State<HeadlinesNews>
    with TickerProviderStateMixin {
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
        title: Text("Headlines News"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
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
      body: TabBarView(
        children: <Widget>[
          Favourites(),
          Popular(),
          Favourites(),
        ],
        controller: _tabController,
      ),
    );
  }
}
