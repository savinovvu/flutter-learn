import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalRowWidget extends StatelessWidget {
  const HorizontalRowWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.yellow,
          height: 40.0,
          width: 40.0,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Expanded(
          child: Container(
            color: Colors.amber,
            height: 40.0,
            width: 40.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,
        ),
      ],
    );
  }
}