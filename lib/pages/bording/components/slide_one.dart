// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Image.asset("assets/images/intro_one.png"),
          new SizedBox(
            height: 80,
          ),
          new Text(
            "Find blood donors",
            style: new TextStyle(
              fontSize: 30,
            ),
          ),
          new SizedBox(
            height: 20,
          ),
          new Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.",
          ),
        ],
      ),
    );
  }
}
