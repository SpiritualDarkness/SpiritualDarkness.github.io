import 'package:flutter/material.dart';
import 'package:home_page/data/data_nav_item.dart';

class WNavBar extends StatefulWidget {
  List<FNavItem> navItems = <FNavItem>[
    FNavItem.create("介绍", Icon(Icons.home), Icon(Icons.home_outlined)),
    FNavItem.create("阅读", Icon(Icons.collections_bookmark),
        Icon(Icons.collections_bookmark_outlined))
  ];
  WNavBarState navBarState = WNavBarState();

  @override
  State<StatefulWidget> createState() {
    navBarState.setData(navItems);

    return navBarState;
  }
}

class WNavBarState extends State<WNavBar> {
  late TextTheme textTheme;
  late ThemeData themeData;
  late ColorScheme colorScheme;
  late final List<FNavItem> navItemData;

  void setData(List<FNavItem> items) {
    navItemData = items;
  }

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    textTheme = themeData.textTheme;
    colorScheme = themeData.colorScheme;

    if (navItemData.isEmpty) {
      throw '导航栏数据为空';
    }

    return SafeArea(
        child: NavigationDrawer(
      backgroundColor: colorScheme.primaryContainer,
      surfaceTintColor: colorScheme.onPrimary,
      indicatorColor: colorScheme.onPrimary,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Text(
            "选择你的传送门",
            style: textTheme.titleSmall,
          ),
        ),
        ...navItemData.map((var data) {
          return NavigationDrawerDestination(
            icon: data.icon,
            label: Text(data.title),
          );
        })
      ],
    ));
  }
}
