// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestSuccesFull extends StatelessWidget {
  const RequestSuccesFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        height: 550,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: new SingleChildScrollView(
          child: new Column(
            children: [
              new Container(
                color: Colors.black,
                height: 300,
                width: double.infinity,
                child: new Image.asset(
                  "assets/images/request_success.png",
                  fit: BoxFit.contain,
                ),
              ),
              new SizedBox(
                height: 50,
              ),
              new Text(
                "Blood is SuccessFully Requested",
                style: new TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.50,
                ),
              ),
              new SizedBox(
                height: 50,
              ),
              new Container(
                decoration: new BoxDecoration(
                  color: new Color(0xFFFF2156),
                  shape: BoxShape.circle,
                ),
                child: new IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: new Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
