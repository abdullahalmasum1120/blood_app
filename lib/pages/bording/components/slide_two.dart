// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Image.asset("assets/images/intro_two.png"),
          new SizedBox(
            height: 80,
          ),
          new Text(
            "Post a blood Request",
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
    ;
  }
}
