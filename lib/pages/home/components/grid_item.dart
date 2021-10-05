// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyGridCard extends StatelessWidget {
  final BuildContext context;
  final int index;
  final String src;
  final String label;
  final Widget widgetToNavigate;

  const MyGridCard({
    Key? key,
    required this.context,
    required this.index,
    required this.src,
    required this.label,
    required this.widgetToNavigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          new MaterialPageRoute(
            builder: (context) {
              return widgetToNavigate;
            },
          ),
        );
      },
      child: new Card(
        elevation: 2,
        shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadowColor: Colors.grey,
        child: new Column(
          children: [
            new Expanded(
              flex: 3,
              child: new SvgPicture.asset(src),
            ),
            new Expanded(
              flex: 1,
              child: new Text(label),
            ),
          ],
        ),
      ),
    );
  }
}
