import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_imitation/home/state.dart';
import 'package:flutter_imitation/home/view.dart';

class HomePage extends Page<HomeState, Map<String, dynamic>> {
  HomePage()
      : super(
          initState: initHomeState,
          view: buildHomeView,
        );
}
