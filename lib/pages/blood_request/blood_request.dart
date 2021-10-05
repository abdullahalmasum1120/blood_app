// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:blood_donation/components/filled_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BloodRequest extends StatelessWidget {
  const BloodRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: new Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          title: new Text(
            "Create A request",
            style: new TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: new SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: new Column(
              children: [
                Container(
                  decoration: new BoxDecoration(boxShadow: [
                    new BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 10,
                      offset: new Offset(5, 10),
                    )
                  ]),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "City",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: new Icon(
                        Icons.location_city_outlined,
                        color: new Color(0xFFFF2156),
                      ),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: new BoxDecoration(boxShadow: [
                    new BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 10,
                      offset: new Offset(5, 10),
                    )
                  ]),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "Hospital",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: new Icon(
                        Icons.local_hospital_outlined,
                        color: new Color(0xFFFF2156),
                      ),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: new BoxDecoration(boxShadow: [
                    new BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 10,
                      offset: new Offset(5, 10),
                    )
                  ]),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "Blood Type",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: new Icon(
                        Icons.bloodtype_outlined,
                        color: new Color(0xFFFF2156),
                      ),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: new BoxDecoration(boxShadow: [
                    new BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 10,
                      offset: new Offset(5, 10),
                    )
                  ]),
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mobile",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: new Icon(
                        Icons.call_outlined,
                        color: new Color(0xFFFF2156),
                      ),
                    ),
                  ),
                ),
                new SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: new BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 10,
                        offset: new Offset(5, 10),
                      )
                    ],
                  ),
                  child: new TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                      hintText: "Add a note",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: new Icon(
                        Icons.note_add_outlined,
                        color: new Color(0xFFFF2156),
                      ),
                    ),
                    maxLines: 3,
                  ),
                ),
                new SizedBox(
                  height: 50,
                ),
                new MyFilledButton(
                  text: "Request",
                  size: new Size(0, 0),
                  function: () {},
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
