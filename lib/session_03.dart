import 'package:flutter/material.dart';
import 'package:flutter_session_03/listview_demo.dart';
import 'package:flutter_session_03/stack_demo.dart';

import 'common_widgets/custom_app_bar.dart';
import 'gridview_demo.dart';
import 'utils/column_row_demo.dart';

class Session03 extends StatelessWidget {
  const Session03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Session 03'),
      body: screenContent(),
    );
  }

  Widget screenContent() {
    return Container(
      width: double.infinity,
      color: Colors.brown[100],
      // child: columnDemo(),
      // child: listViewReplaceColumnDemo(),
      // child: listViewBuilderDemo(),
      // child: listViewBuilderListTileDemo(),
      // child: listViewSeparatedDemo(),
      // child: nestedListViewDemo(),
      // child: gridViewCountDemo(),
      // child: gridViewBuilderDemo(),
      // child: stackDemo(),
      // child: stackPositionedDemo(),
      child: stackPositionedProfileDemo(),
    );
  }
}
