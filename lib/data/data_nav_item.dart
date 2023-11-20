import 'package:flutter/material.dart';

class FNavItem {
  String title = "";
  Widget icon = Icon(Icons.question_mark);
  Widget selected = Icon(Icons.question_mark);

  FNavItem.placholder(this.title);
  FNavItem.create(String title, Widget icon, Widget? selected) {
    this.title = title;
    this.icon = icon;
    this.selected = selected ?? icon;
  }
}
