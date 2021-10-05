// ignore_for_file: prefer_const_constructors, unnecessary_new, sized_box_for_whitespace, prefer_const_declarations

import 'package:blood_donation/pages/bording/components/slide_one.dart';
import 'package:blood_donation/pages/bording/components/slide_two.dart';
import 'package:blood_donation/pages/bording/final_boarding.dart';

import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = new PageController(
      initialPage: 0,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: new Stack(
          children: [
            new PageView(
              controller: pageController,
              children: [
                new OnBoardingOne(),
                new OnBoardingTwo(),
              ],
            ),
            new Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) {
                              return new OnBoardingFinal();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "skip",
                        style: new TextStyle(
                          color: new Color(0xFFFF2156),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                        primary: Colors.white,
                        side: BorderSide(
                          color: new Color(0xFFFF2156),
                          width: 1,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (pageController.page == 1) {
                            Navigator.push(
                              context,
                              new MaterialPageRoute(
                                builder: (context) {
                                  return new OnBoardingFinal();
                                },
                              ),
                            );
                          } else {
                            pageController.nextPage(
                              duration: new Duration(seconds: 1),
                              curve: Curves.easeOut,
                            );
                          }
                        });
                      },
                      child: Text("Next"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                        primary: new Color(0xFFFF2156),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
