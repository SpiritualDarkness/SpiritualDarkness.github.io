import 'package:flutter/material.dart';

class FNavItem {
  String title = "";
  Icon icon = Icon(Icons.question_mark);
  Icon selected = Icon(Icons.question_mark);

  FNavItem.placholder(this.title);
  FNavItem.create(String title, Icon icon, Icon selected) {
    this.title = title;
    this.icon = icon;
    this.selected = selected;
  }
}
