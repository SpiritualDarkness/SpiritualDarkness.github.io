import 'package:flutter/material.dart';

import '../widget/navigator/nav_page_navigator.dart';

class WVideoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FVideoPageState();
  }
}

class FVideoPageState extends State<WVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        //第一个是NavBar
        //下面的就是内容了
        children: [
          Container(
            child: WPageNavigator(),
          ),
          Container(
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}
