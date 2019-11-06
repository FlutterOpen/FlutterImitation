import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/home/page.dart';

import 'imitation/_imitation.dart';

void main() => runApp(MyApp());

typedef Route<T> = Future<dynamic> Function(T value);

Map<String, Widget> pages = <String, Widget>{
  "Douban": DoubanHomePage().buildPage(null),
  "GankIO": GankIOHomePage().buildPage(null),
  "WanAndroid": WanAndroidHomePage().buildPage(null),
  "Movie": MovieMainPage().buildPage(null),
  "Todo": TodoMainPage().buildPage(null),
  "Comic": ComicMainPage().buildPage(null),
};

Route<BuildContext> navigatorToPage(Page page) {
  return (buildContext) {
    return Navigator.push(buildContext,
        MaterialPageRoute(builder: (context) => page.buildPage(null)));
  };
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage().buildPage(pages),
    );
  }
}
