// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:blood_donation/components/filled_Button.dart';
import 'package:blood_donation/pages/login/login.dart';
import 'package:blood_donation/pages/register/account_verify/verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        backgroundColor: Colors.white,
        body: new SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new SizedBox(
                  height: 40,
                ),
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
                new TextFormField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "Username",
                    fillColor: new Color(0xFFF8F8F8),
                    filled: true,
                    prefixIcon: new Icon(
                      Icons.account_circle_outlined,
                      color: new Color(0xFFFF2156),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 20,
                ),
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
                  height: 20,
                ),
                new TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    fillColor: new Color(0xFFF8F8F8),
                    filled: true,
                    prefixIcon: new Icon(
                      Icons.lock_outline,
                      color: new Color(0xFFFF2156),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 20,
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "Mobile no",
                    fillColor: new Color(0xFFF8F8F8),
                    filled: true,
                    prefixIcon: new Icon(
                      Icons.call_outlined,
                      color: new Color(0xFFFF2156),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 20,
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "Blood group",
                    fillColor: new Color(0xFFF8F8F8),
                    filled: true,
                    prefixIcon: new Icon(
                      Icons.bloodtype_outlined,
                      color: new Color(0xFFFF2156),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 20,
                ),
                new TextFormField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "Location",
                    fillColor: new Color(0xFFF8F8F8),
                    filled: true,
                    prefixIcon: new Icon(
                      Icons.location_city_outlined,
                      color: new Color(0xFFFF2156),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 50,
                ),
                new MyFilledButton(
                  text: "REGISTER",
                  size: new Size(double.infinity, 0),
                  function: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) {
                          return new Verify();
                        },
                      ),
                    );
                  },
                ),
                new SizedBox(
                  height: 20,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text(
                      "Already have an account? ",
                      style: new TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    new GestureDetector(
                      child: new Text(
                        "Log In",
                        style: new TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: new Color(0xFFFF2156),
                        ),
                      ),
                      onTap: () {
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
                  ],
                ),
                new SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
