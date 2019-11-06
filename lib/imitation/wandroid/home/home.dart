import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/common/child_home/reducer.dart';
import 'package:flutter_imitation/common/child_home/state.dart';
import 'package:flutter_imitation/common/child_home/view.dart';
import 'package:flutter_imitation/imitation/wandroid/index/index_index.dart';
import 'package:flutter_imitation/imitation/wandroid/mine/mine_index.dart';
import 'package:flutter_imitation/imitation/wandroid/projects/projects_index.dart';
import 'package:flutter_imitation/imitation/wandroid/public/public_index.dart';
import 'package:flutter_imitation/imitation/wandroid/system/system_index.dart';
import 'package:flutter_imitation/util/pair.dart';

String _WAN_ANDROID = "https://github.com/phoenixsky/fun_android_flutter";

class WanAndroidHomePage extends Page<CommonHomeModel, Map<String, dynamic>> {
  WanAndroidHomePage()
      : super(
            initState: _buildCommonHomeModel,
            view: buildCommonHomeView,
            reducer: buildReducer());
}

CommonHomeModel _buildCommonHomeModel(Map<String, dynamic> args) {
  var commonHomeModel = <Pair<BottomNavigationModel, Widget>>[
    Pair(BottomNavigationModel(Icons.home, "首页", Colors.grey), IndexIndex()),
    Pair(BottomNavigationModel(Icons.format_list_bulleted, "项目", Colors.grey),
        ProjectsIndex()),
    Pair(BottomNavigationModel(Icons.whatshot, "公众号", Colors.grey),
        PublicIndex()),
    Pair(BottomNavigationModel(Icons.device_hub, "体系", Colors.grey),
        SystemIndex()),
    Pair(BottomNavigationModel(Icons.person, "我的", Colors.grey), MineIndex()),
  ];

  return CommonHomeModel(commonHomeModel);
}
