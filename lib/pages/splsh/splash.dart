// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'dart:async';


import 'package:blood_donation/pages/bording/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();

    new Timer(
      new Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          new MaterialPageRoute(
            builder: (context) {
              return new OnBoarding();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color(0xFFFF2156),
      body: new Stack(
        fit: StackFit.loose,
        children: [
          Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new SvgPicture.asset(
                  "assets/icons/drop_extended.svg",
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                new Text(
                  "Dare to Donate",
                  style: new TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                new SizedBox(
                  height: 20,
                ),
                new CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],
            ),
          ),
          new Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: new SizedBox(
              width: double.infinity,
              child: new SvgPicture.asset(
                "assets/icons/splash_foreground.svg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
