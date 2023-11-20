import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_page/data/data_nav_item.dart';

class WPageNavigator extends StatefulWidget {
  final List<FNavItem> navigation = <FNavItem>[
    FNavItem.create("游戏编程", FaIcon(FontAwesomeIcons.unity), null),
    FNavItem.create("青年大学习", FaIcon(FontAwesomeIcons.bilibili),
        FaIcon(FontAwesomeIcons.bilibili)),
  ];
  @override
  State<StatefulWidget> createState() {
    return FPageNavigatorState(navigation);
  }
}

class FPageNavigatorState extends State<WPageNavigator> {
  List<FNavItem> items;

  FPageNavigatorState(this.items);

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Expanded(
      child: NavigationRail(
        backgroundColor: colorScheme.primaryContainer,
        groupAlignment: -1,
        labelType: NavigationRailLabelType.all,
        destinations: [
          ...items.map((e) => NavigationRailDestination(
              icon: e.icon,
              label: ExpansionTile(
                title: Text("lol"),
                children: [Text(e.title)],
              )))
        ],
        selectedIndex: 0,
      ),
    );
  }
}
