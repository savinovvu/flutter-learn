import 'package:flutter/material.dart';
import 'package:flutter_learn/15_gridview/widgets/gridview_bulder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: const GridViewBuilderWidget(),
      ),
    );
  }
}


