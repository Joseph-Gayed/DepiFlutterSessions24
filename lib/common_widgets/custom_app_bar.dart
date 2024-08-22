import 'package:flutter/material.dart';

import '../utils/app_consts.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.brown,
      leading: Image.asset(
        '${assetsImagesPath}ic_home.png',
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  @override
  final Size preferredSize =
      const Size.fromHeight(56); // default is 56.0 .. > ;
}
