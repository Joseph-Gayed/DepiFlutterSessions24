import 'package:flutter/material.dart';

Widget columnDemo() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 200,
        height: 100,
        color: Colors.yellow,
      ),
      Container(
        width: 100,
        height: 250,
        color: Colors.green,
      ),
      Container(
        width: 430,
        height: 120,
        color: Colors.redAccent,
      ),
      Container(
        width: 150,
        height: 370,
        color: Colors.blue,
      ),
    ],
  );
}

Widget rowDemo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        width: 200,
        height: 100,
        color: Colors.yellow,
      ),
      Container(
        width: 100,
        height: 150,
        color: Colors.green,
      ),
      Container(
        width: 50,
        height: 200,
        color: Colors.redAccent,
      ),
    ],
  );
}
