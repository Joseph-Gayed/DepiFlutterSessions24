import 'package:flutter/material.dart';
import 'package:flutter_session_05/way_2/my_app_way2.dart';

import '../screens.dart';

void openHomeWay2(BuildContext context) {
  Navigator.pushNamed(context,AppRoute.home.route);
}

void replaceWithHomeWay2(BuildContext context) {
  Navigator.pushReplacementNamed(context,AppRoute.home.route);
}

void openProfileWay2(BuildContext context) {
  Navigator.pushNamed(context, AppRoute.profile.route);

}

void openSettingWay2(BuildContext context) {
  Navigator.pushNamed(context, AppRoute.settings.route);
}


