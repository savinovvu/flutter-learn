import 'package:flutter/material.dart';
import 'package:flutter_learn/13_side_bar_navigation/widgets/left_drawer.dart';
import 'package:flutter_learn/13_side_bar_navigation/widgets/right_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: const LeftDrawerWidget(),
      endDrawer: const RightDrawerWidget(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
