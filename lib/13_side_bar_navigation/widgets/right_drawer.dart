import 'package:flutter/material.dart';
import 'package:flutter_learn/13_side_bar_navigation/widgets/menu_list_tile.dart';

class RightDrawerWidget extends StatelessWidget {
  const RightDrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Icon(
              Icons.face,
              size: 128.0,
              color: Colors.white54,
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}
