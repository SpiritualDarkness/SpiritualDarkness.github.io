import 'package:flutter/material.dart';
import 'package:home_page/data/data_nav_item.dart';

class WNavBar extends StatefulWidget {
  List<FNavItem> navItems = <FNavItem>[
    FNavItem.create("介绍", Icon(Icons.home), Icon(Icons.home_outlined)),
    FNavItem.create("阅读", Icon(Icons.book), Icon(Icons.book_outlined)),
    FNavItem.create("文章", Icon(Icons.collections_bookmark),
        Icon(Icons.collections_bookmark_outlined)),
    FNavItem.create("视频", Icon(Icons.tv), Icon(Icons.tv_outlined)),
    FNavItem.create("软件", Icon(Icons.apps), Icon(Icons.apps_outage)),
    //这里的需要添加到Footer
    FNavItem.create("许可证", Icon(Icons.balance), Icon(Icons.balance_outlined)),
    FNavItem.placholder("团队介绍"),
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
      indicatorColor: colorScheme.inversePrimary,
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
        }),
        Container(
          color: colorScheme.inversePrimary,
          height: 5,
          width: 10,
          margin: EdgeInsets.fromLTRB(20, 200, 20, 20),
        ),
        NavigationDrawerDestination(
            icon: Icon(Icons.question_mark), label: Text("Bottom"))
      ],
    ));
  }
}
