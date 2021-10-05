// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:blood_donation/components/filled_Button.dart';
import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          centerTitle: true,
          titleTextStyle: new TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
          title: new Text("Report"),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: new IconButton(
            onPressed: () {},
            icon: new Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: new SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                new ListTile(
                  subtitle: new Text(
                    "Dhaka Medical college, Dhaka",
                    textAlign: TextAlign.center,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Icon(Icons.location_on),
                      new Text("Research center"),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: new Image.asset(
                    "assets/images/report.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: new GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 100,
                    ),
                    itemBuilder: (context, index) {
                      return new Card(
                        elevation: 5,
                        child: Container(
                          alignment: Alignment.center,
                          child: new ListTile(
                            title: new Text(
                              "Title",
                              textAlign: TextAlign.center,
                            ),
                            subtitle: new Text(
                              "Sub title",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                new MyFilledButton(
                  text: "My Report",
                  size: new Size(0, 0),
                  function: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
