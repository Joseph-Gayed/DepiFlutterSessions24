import 'package:flutter/material.dart';

Widget gridViewCountDemo() {
  List<Widget> squares = [];
  for (int i = 0; i < 64; i++) {
    final int row = i ~/ 8;
    final int col = i % 8;
    final bool isWhite = (row + col) % 2 == 0;

    squares.add(Container(
      color: (isWhite) ? Colors.white : Colors.brown[300],
      width: 50,
      height: 50,
    ));
  }
  double space = 5;
  return GridView.count(
      crossAxisCount: 8,
      mainAxisSpacing: 25,
      crossAxisSpacing: space,
      children: squares);
}

Widget gridViewBuilderDemo() {
  return GridView.builder(
    itemCount: 64,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 8,
      mainAxisSpacing: 35,
      crossAxisSpacing: 25,
    ),
    itemBuilder: (c, i) => Container(
      color: Colors.brown[600],
      width: 50,
      height: 50,
    ),
  );
}
