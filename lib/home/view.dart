import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imitation/home/state.dart';

Widget buildHomeView(
    HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: Text("Pozion Imitation"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            childAspectRatio: 0.9,
            crossAxisCount: 2),
        itemCount: state.values.length,
        itemBuilder: (context, index) => GestureDetector(
          child: InkWell(
            child: Card(
              child: Center(
                child: Text(
                  state.values[index].first,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => state.values[index].second)),
          ),
        ),
      ));
}
