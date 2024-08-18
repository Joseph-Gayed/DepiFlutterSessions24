import 'package:flutter/material.dart';
import 'package:flutter_session_02/app_consts.dart';

Widget simpleNetworkImageDemo() {
  return Container(
    color: Colors.deepPurpleAccent[200],
    width: 400,
    height: 700,
    child: Image(fit: BoxFit.cover, image: NetworkImage(randomImageUrl)),
  );
}

// "https://picsum.photos/401/402"
Widget simpleNetworkImageWithProgressIndicatorDemo() {
  return Container(
    color: Colors.deepPurpleAccent[200],
    width: 300,
    height: 500,
    child: Image.network(
      randomImageUrl,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, remainingProgress) {
        if (remainingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            color: Colors.orange,
            value: remainingProgress.expectedTotalBytes != null
                ? remainingProgress.cumulativeBytesLoaded /
                    remainingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
    ),
  );
}

Widget simpleAssetImageDemo() {
  return Container(
    color: Colors.deepPurpleAccent[200],
    width: 400,
    height: 700,
    // child: Image.asset("${assetsImagesPath}image_sample.jpg")
    child: const Image(
      image: AssetImage("${assetsImagesPath}image_sample.jpg"),
    ),
  );
}
