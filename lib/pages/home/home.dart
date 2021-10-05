// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:blood_donation/pages/home/components/appbar.dart';
import 'package:blood_donation/pages/home/components/body.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(),
      appBar: new MyAppBar(context: context),
      body: new MyBody(context: context),
    );
  }
}
