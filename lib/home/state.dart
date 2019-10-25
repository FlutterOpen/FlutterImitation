import 'package:flutter/material.dart';
import 'package:flutter_imitation/util/pair.dart';

class HomeState {
  List<Pair<String, Widget>> values = new List();
}

HomeState initHomeState(Map<String, dynamic> params) {
  var homeState = HomeState();
  params.forEach((key, value) {
    homeState.values.add(Pair(key, value));
  });
  return homeState;
}
