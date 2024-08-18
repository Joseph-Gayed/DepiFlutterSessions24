import 'package:flutter/material.dart';
import 'package:flutter_session_02/app_consts.dart';

import 'custom_app_bar.dart';
import 'image_circular_widgets.dart';
import 'user.dart';

class Session02 extends StatelessWidget {
  const Session02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Session 02"),
      body: screenContent(),
    );
  }

  Widget screenContent() {
    User user = getTestUser();

    return Container(
        color: Colors.deepPurpleAccent[100],
        child: Center(
            // child: simpleNetworkImageDemo()
            // child: simpleNetworkImageWithProgressIndicatorDemo()
            // child: simpleAssetImageDemo()
            // child: circularWithBoxContainerDemo()
            // child: circularWithClipOvalDemo()
            child: circularWithCircleAvatarDemo(user)
            // child: columnDemo(),
            // child: rowDemo(),
            ));
  }
}

User getTestUser() {
  User userWithNullImage =
      User(id: 1, image: null, name: "Hossam Ramdan M3wad");

  User userWithNetworkImage =
      User(id: 1, image: randomImageUrl, name: "Hossam Ramdan M3wad");

  return userWithNetworkImage;
}
