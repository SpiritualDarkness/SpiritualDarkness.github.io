import 'package:flutter/material.dart';
import 'package:home_page/navigator/nav_page_navigator.dart';

class WVideoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FVideoPageState();
  }
}

class FVideoPageState extends State<WVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [WPageNavigator()],
    );
  }
}
