import 'package:flutter/material.dart';
import 'package:home_page/data/data_nav_item.dart';

class WPageNavigator extends StatefulWidget {
  final List<FNavItem> _topNavItems = <FNavItem>[FNavItem.placholder("财经")];
  @override
  State<StatefulWidget> createState() {
    return FPageNavigatorState();
  }
}

class FPageNavigatorState extends State<WPageNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(destinations: [
      NavigationDestination(
          icon: Icon(Icons.question_mark), label: ("SelectionA")),
      NavigationDestination(
          icon: Icon(Icons.question_mark), label: ("SelectionB")),
      NavigationDestination(
          icon: Icon(Icons.question_mark), label: ("SelectionC")),
    ]);
  }
}
