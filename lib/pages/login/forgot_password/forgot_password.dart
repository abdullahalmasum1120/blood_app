// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:blood_donation/components/filled_Button.dart';
import 'package:blood_donation/pages/login/login.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: new Scaffold(
      backgroundColor: Colors.white,
      body: new Padding(
        padding: EdgeInsets.all(20),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new TextFormField(
              decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: "Email",
                fillColor: new Color(0xFFF8F8F8),
                filled: true,
                prefixIcon: new Icon(
                  Icons.email_outlined,
                  color: new Color(0xFFFF2156),
                ),
              ),
            ),
            new SizedBox(
              height: 40,
            ),
            new Text(
              "Your password reset will be send in your registered email address.",
              style: new TextStyle(
                fontSize: 18,
              ),
            ),
            new SizedBox(
              height: 20,
            ),
            new MyFilledButton(
              text: "SEND",
              size: new Size(double.infinity, 0),
              function: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) {
                      return new LogIn();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}
