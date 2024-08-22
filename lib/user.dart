import 'package:flutter/material.dart';

class User {
  String name;
  List<String> friends;
  Color bg;

  User(this.name, this.friends,{this.bg= Colors.brown});
}

List<User> getUsersData() {
  return [
    User("User 1", [
      "Friend 11",
      "Friend 12",
      "Friend 13",
      "Friend 14",
      "Friend 15",
      "Friend 16"
    ],
    bg: Colors.red[300]!),
    User("User 2", [
      "Friend 21",
      "Friend 22",
      "Friend 23",
      "Friend 24",
      "Friend 25",
      "Friend 26"
    ]),
    User("User 3", [
      "Friend 31",
      "Friend 32",
      "Friend 33",
      "Friend 34",
      "Friend 35",
      "Friend 36"
    ],
    bg: Colors.purple[300]!),
    User("User 4", [
      "Friend 41",
      "Friend 42",
      "Friend 43",
      "Friend 44",
      "Friend 45",
      "Friend 46"
    ]),
    User("User 5", [
      "Friend 51",
      "Friend 52",
    ],
    bg: Colors.yellow[900]!)
  ];
}
