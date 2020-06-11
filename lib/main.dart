import 'package:flutter/material.dart';
import 'package:newsapp/screens/home_screen.dart';
import 'package:newsapp/screens/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utillities/app_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences;
  preferences = await SharedPreferences.getInstance();
  bool seen = preferences.getBool('seen');
  Widget Screen;
  if(seen == null){
    Screen = Onboarding();
  }else{
    Screen = HomeScreen();
  }

  runApp(NewsApp(Screen));
}
class NewsApp extends StatelessWidget {
  Widget home;

  NewsApp(this.home);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: this.home,
    );
  }
}

