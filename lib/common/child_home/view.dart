import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/common/child_home/action.dart';
import 'package:flutter_imitation/common/child_home/state.dart';

Widget buildCommonHomeView(
    CommonHomeModel state, Dispatch dispatch, ViewService viewService) {
  var currentIndex = state.index;
  return Scaffold(
    body: IndexedStack(
      index: currentIndex,
      children: state.contents.map((content) {
        return content.second;
      }).toList(),
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => dispatch(HomeTabClickActionCreator.tabClick(index)),
      items: state.contents.map((content) {
        var bottomNavigationBar = content.first;
        return BottomNavigationBarItem(
            icon: Icon(bottomNavigationBar.iconData),
            title: Text(bottomNavigationBar.title),
            backgroundColor: bottomNavigationBar.color);
      }).toList(),
    ),
  );
}
