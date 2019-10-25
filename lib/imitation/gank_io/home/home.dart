import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/common/child_home/reducer.dart';
import 'package:flutter_imitation/common/child_home/state.dart';
import 'package:flutter_imitation/common/child_home/view.dart';
import 'package:flutter_imitation/imitation/gank_io/class/class_index.dart';
import 'package:flutter_imitation/imitation/gank_io/collection_index/collection_index.dart';
import 'package:flutter_imitation/imitation/gank_io/girl/girl_index.dart';
import 'package:flutter_imitation/imitation/gank_io/newest/newest_index.dart';
import 'package:flutter_imitation/util/pair.dart';

String _GANK_IO = "https://github.com/lijinshanmx/flutter_gank";

class GankIOHomePage extends Page<CommonHomeModel, Map<String, dynamic>> {
  GankIOHomePage()
      : super(
            initState: _buildCommonHomeModel,
            view: buildCommonHomeView,
            reducer: buildReducer());
}

CommonHomeModel _buildCommonHomeModel(Map<String, dynamic> args) {
  var commonHomeModel = <Pair<BottomNavigationModel, Widget>>[
    Pair(BottomNavigationModel(Icons.home, "最新", Colors.grey), NewestIndex()),
    Pair(BottomNavigationModel(Icons.class_, "分类", Colors.grey), ClassIndex()),
    Pair(BottomNavigationModel(Icons.collections, "妹子", Colors.grey),
        GirlIndex()),
    Pair(BottomNavigationModel(Icons.collections_bookmark, "收藏", Colors.grey),
        CollectionIndex()),
  ];

  return CommonHomeModel(commonHomeModel);
}
