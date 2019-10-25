import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/common/child_home/reducer.dart';
import 'package:flutter_imitation/common/child_home/state.dart';
import 'package:flutter_imitation/common/child_home/view.dart';
import 'package:flutter_imitation/imitation/douban/group/group_index.dart';
import 'package:flutter_imitation/imitation/douban/index/index_index.dart';
import 'package:flutter_imitation/imitation/douban/market/market_index.dart';
import 'package:flutter_imitation/imitation/douban/media/media_index.dart';
import 'package:flutter_imitation/imitation/douban/mine/mine_index.dart';
import 'package:flutter_imitation/util/pair.dart';

String _DOUBAN_PATH = "https://github.com/kaina404/FlutterDouBan";

class DoubanHomePage extends Page<CommonHomeModel, Map<String, dynamic>> {
  DoubanHomePage()
      : super(
            initState: _buildCommonHomeModel,
            view: buildCommonHomeView,
            reducer: buildReducer());
}

CommonHomeModel _buildCommonHomeModel(Map<String, dynamic> args) {
  var commonHomeModel = <Pair<BottomNavigationModel, Widget>>[
    Pair(BottomNavigationModel(Icons.home, "首页", Colors.grey), IndexIndex()),
    Pair(BottomNavigationModel(Icons.book, "书影音", Colors.grey), MediaIndex()),
    Pair(BottomNavigationModel(Icons.group, "小组", Colors.grey), GroupIndex()),
    Pair(BottomNavigationModel(Icons.shopping_cart, "市集", Colors.grey),
        MarketIndex()),
    Pair(BottomNavigationModel(Icons.person, "我的", Colors.grey), MineIndex()),
  ];

  return CommonHomeModel(commonHomeModel);
}
