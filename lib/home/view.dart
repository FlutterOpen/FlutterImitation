import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/home/state.dart';

Widget buildHomeView(
    HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Pozion Imitation"),
    ),
    body: ListView.separated(
        itemBuilder: (context, index) => GestureDetector(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(state.values[index].first),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => state.values[index].second))),
        separatorBuilder: (context, index) => GestureDetector(
                child: Divider(
              height: 1,
              color: Colors.grey[400],
            )),
        itemCount: state.values.length),
  );
}
