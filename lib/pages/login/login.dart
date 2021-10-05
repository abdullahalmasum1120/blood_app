// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:blood_donation/components/filled_Button.dart';
import 'package:blood_donation/pages/home/home.dart';
import 'package:blood_donation/pages/login/forgot_password/forgot_password.dart';
import 'package:blood_donation/pages/register/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        backgroundColor: Colors.white,
        body: new SingleChildScrollView(
          child: new Padding(
            padding: const EdgeInsets.all(20),
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
                  height: 50,
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
                  height: 40,
                ),
                new MyFilledButton(
                  text: "LOG IN",
                  size: new Size(double.infinity, 0),
                  function: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) {
                          return new MyHome();
                        },
                      ),
                    );
                  },
                ),
                new SizedBox(
                  height: 20,
                ),
                new GestureDetector(
                  child: new Text(
                    "Forgot Password?",
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
                          return new ForgotPassword();
                        },
                      ),
                    );
                  },
                ),
                new SizedBox(
                  height: 40,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text(
                      "Don't have an account? ",
                      style: new TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    new GestureDetector(
                      child: new Text(
                        "Register Now",
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
                              return new Register();
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
