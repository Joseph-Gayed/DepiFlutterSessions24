import 'package:flutter/material.dart';

Widget gestureDetectorDemo() {
  return Center(
    child: ListView(
      children: [
        Container(
          color: Colors.indigo[300],
          height: 50,
          margin: const EdgeInsets.all(25),
          child: GestureDetector(
            onTap: onViewAllAccountsClicked,
            onLongPress: (){
              onMyButtonClicked(clickedButtonName:"LongPress on View All Accounts");
            },
            onDoubleTap: (){  onMyButtonClicked(clickedButtonName:"DoubleTap on View All Accounts");},

            child: const ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.list),
              title: Text(
                "View All Accounts",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),

        Container(
          color: Colors.indigo,
          height: 50,
          margin: const EdgeInsets.all(25),
          child: GestureDetector(
            onTap: () {
              onMyButtonClicked(clickedButtonName: "Add New Account");
            },
            onLongPress: () {
              print("onLongPress: Add New Account");
            },
            child: const ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.add),
              title: Text(
                "Add New Account",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.redAccent,
          height: 50,
          margin: const EdgeInsets.all(25),
          child: GestureDetector(
            onTap: () {
              onMyButtonClicked(clickedButtonName: "Delete Account");
            },
            child: const ListTile(
              iconColor: Colors.white,
              leading: Icon(Icons.delete),
              title: Text(
                "Delete Account",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),



        GestureDetector(
          onTap: () {
            onMyButtonClicked(clickedButtonName: "Indigo Container is Clicked");
          },
          child: Container(
            color: Colors.indigo[400],
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    onMyButtonClicked(clickedButtonName: "Red Row is Clicked");
                  },
                  child: Container(
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            onMyButtonClicked(clickedButtonName: "C1 Clicked");
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 50),
                            color: Colors.grey,
                            width: 100,
                            height: 100,
                            child: const Center(child: Text("C1")),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            onMyButtonClicked(clickedButtonName: "C2 Clicked");
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 50),
                            color: Colors.blue,
                            width: 100,
                            height: 100,
                            child: const Center(child: Text("C2")),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    onMyButtonClicked(clickedButtonName: "Green Row is Clicked");
                  },
                  child: Container(
                    color: Colors.greenAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            onMyButtonClicked(clickedButtonName: "C3 Clicked");
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 50),
                            color: Colors.grey,
                            width: 100,
                            height: 100,
                            child: const Center(child: Text("C3")),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            onMyButtonClicked(clickedButtonName: "C4 Clicked");
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 50),
                            color: Colors.blue,
                            width: 100,
                            height: 100,
                            child: const Center(child: Text("C4")),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

void onViewAllAccountsClicked() {
  print("The View All Accounts Clicked");
}

void onMyButtonClicked({required String clickedButtonName}) {
  print("The Clicked button is:$clickedButtonName");
}
