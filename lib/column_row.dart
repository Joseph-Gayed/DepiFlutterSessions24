import 'package:flutter/material.dart';

Widget columnDemo() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(
        flex: 2,
        child: Container(
          width: 200,
          height: 100,
          color: Colors.yellow,
        ),
      ),
      Container(
        width: 100,
        height: 50,
        color: Colors.green,
      ),
      Container(
        width: 300,
        height: 120,
        color: Colors.redAccent,
      ),
      Expanded(
        //by default flex = 1
        child: Container(
          width: 150,
          height: 70,
          color: Colors.blue,
        ),
      ),
    ],
  );
}

Widget rowDemo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Expanded(
        flex: 3,
        child: Container(
          width: 200,
          height: 100,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 100,
          height: 150,
          color: Colors.green,
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: 50,
          height: 200,
          color: Colors.redAccent,
        ),
      ),
    ],
  );
}
