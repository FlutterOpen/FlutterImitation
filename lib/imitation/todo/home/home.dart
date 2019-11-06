import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/common/child_home/reducer.dart';
import 'package:flutter_imitation/common/child_home/state.dart';
import 'package:flutter_imitation/common/child_home/view.dart';
import 'package:flutter_imitation/imitation/todo/mine/mine_index.dart';
import 'package:flutter_imitation/imitation/todo/index/index_index.dart';
import 'package:flutter_imitation/util/pair.dart';

class TodoMainPage extends Page<CommonHomeModel, Map<String, dynamic>> {
  TodoMainPage()
      : super(
            initState: _buildCommonHomeModel,
            view: buildCommonHomeView,
            reducer: buildReducer());
}

CommonHomeModel _buildCommonHomeModel(Map<String, dynamic> args) {
  var commonHomeModel = <Pair<BottomNavigationModel, Widget>>[
    Pair(BottomNavigationModel(Icons.home, "首页", Colors.grey), IndexIndex()),
    Pair(BottomNavigationModel(Icons.home, "我的", Colors.grey), MineIndex()),
  ];

  return CommonHomeModel(commonHomeModel);
}
