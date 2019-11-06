import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/common/child_home/reducer.dart';
import 'package:flutter_imitation/common/child_home/state.dart';
import 'package:flutter_imitation/common/child_home/view.dart';
import 'package:flutter_imitation/imitation/movie/index/index_index.dart';
import 'package:flutter_imitation/imitation/movie/mine/mine_index.dart';
import 'package:flutter_imitation/util/pair.dart';

String _WAN_ANDROID = "https://github.com/phoenixsky/fun_android_flutter";

class MovieMainPage extends Page<CommonHomeModel, Map<String, dynamic>> {
  MovieMainPage()
      : super(
            initState: _buildCommonHomeModel,
            view: buildCommonHomeView,
            reducer: buildReducer());
}

CommonHomeModel _buildCommonHomeModel(Map<String, dynamic> args) {
  var commonHomeModel = <Pair<BottomNavigationModel, Widget>>[
    Pair(BottomNavigationModel(Icons.home, "首页", Colors.grey), IndexIndex()),
    Pair(BottomNavigationModel(Icons.person, "我的", Colors.grey), MineIndex()),
  ];

  return CommonHomeModel(commonHomeModel);
}
