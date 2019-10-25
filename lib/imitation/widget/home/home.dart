import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';

class WidgetHomePage extends Page<Object, Map<String, dynamic>> {
  WidgetHomePage()
      : super(
          initState: (map) => Object(),
          view: (object, dispatch, viewService) {
            return Center(
              child: Text("待定"),
            );
          },
        );
}
