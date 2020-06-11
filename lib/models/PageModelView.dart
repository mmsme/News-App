import 'package:flutter/material.dart';

class PageViewModel{
  IconData _PageIcon;
  String _PageImg;
  String _title;
  String _description;

  PageViewModel(this._PageIcon, this._PageImg, this._title, this._description);

  String get description => _description;

  String get title => _title;

  String get PageImg => _PageImg;

  IconData get PageIcon => _PageIcon;
}