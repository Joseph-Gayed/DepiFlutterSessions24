import 'package:flutter/material.dart';

Widget stackDemo() {
  return Stack(
    children: <Widget>[
      Container(
        width: 300,
        height: 300,
        color: Colors.red,
      ),
      Container(
        width: 200,
        height: 200,
        color: Colors.green,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    ],
  );
}

Widget stackPositionedDemo() {
  return Center(
    child: Container(
      color: Colors.blue[200],
      width: 300,
      height: 300,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            bottom: 50,
            left: 50,
            right: 50,
            child: Container(
              width: 1,
              height: 1,
              color: Colors.red,
            ),
          ),
          Positioned(
            bottom: 25,
            right: 25,
            child: Container(
              width: 70,
              height: 70,
              color: Colors.green,
            ),
          ),
          Positioned(
            left: 25,
            top: 25,
            child: Container(
              width: 40,
              height: 40,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget stackPositionedProfileDemo() {
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        height: 155,
        child: Stack(
          children: <Widget>[
            //Rectangle
            Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
            ),

            //Circle
            Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration:  BoxDecoration(
                    color: Colors.brown,
                    border: Border.all(color: Colors.white,width: 5),
                    shape: BoxShape.circle,
                  ),
                )),
          ],
        ),
      ),

      const SizedBox(
        height: 20,
      ),

      Expanded(
          child: Container(
        margin: const EdgeInsets.all(50),
        color: Colors.brown[300],
      ))
    ],
  );
}
