import 'package:flutter/material.dart';
import 'package:flutter_session_03/user.dart';

Widget listViewReplaceColumnDemo() {
  return ListView(
    scrollDirection: Axis.horizontal,
    addAutomaticKeepAlives: false,
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
      width: 300,
      height: 120,
      color: Colors.redAccent,
    ),
    Container(
      width: 150,
      height: 370,
      color: Colors.blue,
    ),
  ]);
}

Widget listViewBuilderDemo() {
  List users = ["User 1", "User 2", "User 3", "User 4", "User 5", "User 6"];
  return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) => Container(
            color: index % 2 == 0 ? Colors.brown[200] : Colors.brown[400],
            padding: const EdgeInsets.all(16.0),
            child: Text(users[index]),
          ));
}

Widget listViewBuilderListTileDemo() {
  List users = ["User 1", "User 2", "User 3", "User 4", "User 5", "User 6"];
  return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) => Container(
            color: index % 2 == 0 ? Colors.brown[200] : Colors.brown[400],
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              leading: const Icon(
                Icons.person,
                // color: Colors.red,
              ),
              iconColor: Colors.white,
              title: Text(
                users[index],
                style: const TextStyle(color: Colors.white),
              ),
              trailing: const Icon(
                Icons.settings,
              ),
            ),
          ));
}

Widget listViewSeparatedDemo() {
  List users = ["User 1", "User 2", "User 3", "User 4", "User 5", "User 6"];
  return ListView.separated(
    scrollDirection: Axis.vertical,
    itemCount: users.length,
    itemBuilder: (_, index) => Container(
      color: index % 2 == 0 ? Colors.brown[200] : Colors.brown[400],
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        leading: const Icon(Icons.person),
        title: Text(
          users[index],
          style: const TextStyle(color: Colors.white),
        ),
        iconColor: Colors.white,
        trailing: (index%2==0)?const Icon(Icons.favorite):const Icon(Icons.favorite_border_outlined),
      ),
    ),
    separatorBuilder: (_, __) => const Divider(
      color: Colors.deepPurple,
      thickness: 10,
      height: 2,
    ),
  );
}

Widget nestedListViewDemo() {
  List<User> users = getUsersData();
  return ListView.builder(
    itemCount: users.length, // Number of vertical items
    itemBuilder: (context, index) {
      User currentUser = users[index];


      return Container(
        decoration: BoxDecoration(
            color: currentUser.bg, 
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(8.0),
        height: 150, // Set height for horizontal ListView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              currentUser.name,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),

            Expanded(child: FriendsView(friends: currentUser.friends)),
          ],
        ),
      );
    },
  );
}

class FriendsView extends StatelessWidget {
  final List<String> friends;

  const FriendsView({super.key, required this.friends});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: friends.length, // Number of horizontal items
      itemBuilder: (context, index) {
        String friendName =  friends[index];
        return Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Center(
            child: Text(
             friendName,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
