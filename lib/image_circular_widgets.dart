import 'package:flutter/material.dart';
import 'package:flutter_session_02/user.dart';

import 'app_consts.dart';
import 'circle_avatar_with_loading.dart';

Widget circularWithBoxContainerDemo() {
  return Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(width: 8, color: Colors.deepPurple),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(randomImageUrl),
      ),
    ),
  );
}

Widget circularWithClipOvalDemo() {
  return ClipOval(
    child: SizedBox.fromSize(
      size: const Size.fromRadius(100), // Image radius
      child: const Image(
          fit: BoxFit.cover,
          image: AssetImage("${assetsImagesPath}profile.png")),
    ),
  );
}

Widget circularWithCircleAvatarDemo(User user) {
  return CircleAvatar(
    radius: 150,
    backgroundColor: Colors.deepPurpleAccent,
    backgroundImage: user.image == null
        ? null
        : NetworkImage(
            user.image!,
          ),
    child: user.image != null
        ? null
        : Text(
            user.name.initials,
            style: const TextStyle(color: Colors.white, fontSize: 50),
          ),
  );
}

Widget circleAvatarWithLoadingIndicatorDemo(String imageUrl) {
  return CircleAvatarWithLoading(imageUrl: imageUrl,radius: 100,);
}
// user.image != null ? NetworkImage(user.image!) : null
