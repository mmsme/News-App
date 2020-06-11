
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/PageModelView.dart';
import 'home_screen.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<PageViewModel> PageList;
  ValueNotifier<int> pageIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    AssignData();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(PageList[index].PageImg),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0, -120),
                          child: Icon(
                            PageList[index].PageIcon,
                            size: 150,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          PageList[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            PageList[index].description,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            itemCount: PageList.length,
            onPageChanged: (index) {
              pageIndexNotifier.value = index;
            },
          ),
          Transform.translate(
            offset: Offset(0, 150),
            child: Center(child: DrawDots(4)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    _UpgradSeen();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void AssignData() {
    PageList = List<PageViewModel>();

    PageList.add(PageViewModel(
        Icons.ac_unit,
        "assets/images/pg.jpg",
        "Welcome!",
        "Making friends is easy as waving your hands back and forth in easy step"));

    PageList.add(PageViewModel(
        Icons.business,
        "assets/images/pg2.jpg",
        "Business",
        "1-Making friends is easy as waving your hands back and forth in easy step"));

    PageList.add(PageViewModel(Icons.map, "assets/images/pg3.jpg", "Map",
        "2-Making friends is easy as waving your hands back and forth in easy step"));

    PageList.add(PageViewModel(
        Icons.credit_card,
        "assets/images/pg4.jpg",
        "Card",
        "3-Making friends is easy as waving your hands back and forth in easy step"));
  }

  Widget DrawDots(int length) {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) =>
          Circle(
            size: 8.0,
            color: Colors.white70,
          ),
      highlightedBuilder: (animationController, index) =>
          ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: 12.0,
              color: Colors.red.shade700,
            ),
          ),
    );
  }

  void _UpgradSeen() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('seen', true);
  }
}