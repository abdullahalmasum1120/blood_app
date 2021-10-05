// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:blood_donation/components/filled_Button.dart';
import 'package:blood_donation/components/outlined_button.dart';
import 'package:blood_donation/pages/login/login.dart';
import 'package:blood_donation/pages/register/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingFinal extends StatelessWidget {
  const OnBoardingFinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new SvgPicture.asset(
                "assets/icons/logo.svg",
                height: 100,
                width: 100,
              ),
              new SizedBox(
                height: 20,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Text(
                    "Dare ",
                    style: new TextStyle(
                      color: new Color(0xFFFF2156),
                      fontSize: 25,
                    ),
                  ),
                  new Text(
                    "To ",
                    style: new TextStyle(
                      color: new Color(0xFF000000),
                      fontSize: 25,
                    ),
                  ),
                  new Text(
                    "Donate ",
                    style: new TextStyle(
                      color: new Color(0xFFFF2156),
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              new SizedBox(
                height: 20,
              ),
              new Text(
                "You can donate for ones in need and request blood if you need.",
                style: new TextStyle(
                  fontSize: 20,
                ),
              ),
              new SizedBox(
                height: 100,
              ),
              new MyOutlinedButton(
                text: "LOG IN",
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
              ),
              new SizedBox(
                height: 20,
              ),
              new MyFilledButton(
                function: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) {
                        return new Register();
                      },
                    ),
                  );
                },
                text: "REGISTER",
                size: new Size(double.infinity, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
