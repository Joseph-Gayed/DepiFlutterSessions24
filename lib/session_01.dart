import 'package:flutter/material.dart';

class Session01Screen extends StatelessWidget {
  const Session01Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: const Icon(
          Icons.notification_important,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          "Session1",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Container(
            color: Colors.orange[300],
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(
              Icons.delete,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Container(
            color: Colors.orange[300],
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.logout,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 200,
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.deepPurpleAccent[200],
              border: const BorderDirectional(
                  top: BorderSide(width: 8, color: Colors.orange),
                  start: BorderSide(width: 8, color: Colors.orange)),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35))),
          child: const Center(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SelectionArea(
              child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  "is simply dummy text of the printing and typesetssssssssssting industruuuuuiiiuuiuiiy. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
            ),
          )),
        ),
      ),
    );
  }
}
