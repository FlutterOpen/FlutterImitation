import 'package:fish_redux/fish_redux.dart';

enum HomeTabClickAction { TAB_CLICK }

class HomeTabClickActionCreator {
  static Action tabClick(int index) {
    return Action(HomeTabClickAction.TAB_CLICK, payload: index);
  }
}
