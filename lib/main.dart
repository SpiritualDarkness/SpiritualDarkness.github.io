import 'package:flutter/material.dart';
import 'package:home_page/navigator/nav_global_navigator.dart';
import 'package:home_page/page/page_video_page.dart';
import 'package:home_page/test/testCSV.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '心灵黑暗研究所',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '主页'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var globalNavigator = WGlobalNavigator();
  int selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    globalNavigator.setOnValueChanged(updateIndex);
    print(selectedIndex);
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = WVideoPage();
        break;
      case 1:
        page = testwidget();
      default:
        page = Placeholder();
        break;
    }

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [globalNavigator, page],
      ),
    );
  }
}
