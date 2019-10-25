import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_imitation/common/child_home/action.dart';
import 'package:flutter_imitation/common/child_home/state.dart';

Reducer<CommonHomeModel> buildReducer() {
  return asReducer<CommonHomeModel>(<Object, Reducer<CommonHomeModel>>{
    HomeTabClickAction.TAB_CLICK: _onTabClick,
  });
}

CommonHomeModel _onTabClick(CommonHomeModel model, Action action) {
  final CommonHomeModel newModel = model.clone();
  newModel.index = action.payload;
  return newModel;
}
