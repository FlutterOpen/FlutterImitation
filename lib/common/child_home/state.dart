import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/util/pair.dart';

class BottomNavigationModel {
  const BottomNavigationModel(this.iconData, this.title, this.color);

  final IconData iconData;
  final String title;
  final MaterialColor color;
}

class CommonHomeModel implements Cloneable<CommonHomeModel> {
  CommonHomeModel(this.contents);

  int index = 0;
  final List<Pair<BottomNavigationModel, Widget>> contents;

  @override
  CommonHomeModel clone() {
    return CommonHomeModel(contents)..index = index;
  }
}