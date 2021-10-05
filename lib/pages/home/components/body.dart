// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:blood_donation/pages/assistant/asistant.dart';
import 'package:blood_donation/pages/find_donors/donor_list.dart';
import 'package:blood_donation/pages/home/components/grid_item.dart';
import 'package:blood_donation/pages/home/components/list_item.dart';
import 'package:blood_donation/pages/report/report.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyBody extends StatefulWidget {
  final BuildContext context;

  const MyBody({Key? key, required this.context}) : super(key: key);

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int _current = 0;
  List<Map> gridItems = [
    {
      "src": "assets/icons/find_donors.svg",
      "label": "Find Donors",
      "onTap": new DonorList(),
    },
    {
      "src": "assets/icons/donate.svg",
      "label": "Donates",
      "onTap": new DonorList(),
    },
    {
      "src": "assets/icons/other_bloods.svg",
      "label": "Other Bloods",
      "onTap": new DonorList(),
    },
    {
      "src": "assets/icons/assistant.svg",
      "label": "Assistant",
      "onTap": new Assistant(),
    },
    {
      "src": "assets/icons/report.svg",
      "label": "Report",
      "onTap": new Report(),
    },
    {
      "src": "assets/icons/campaign.svg",
      "label": "Campaign",
      "onTap": new DonorList(),
    },
  ];
  List<Map> requestList = [
    {
      "name": "Sajibul islam",
      "location": "dhaka, mohammadpur",
      "bloodGroup": "A+",
      "time": "25 September"
    },
    {
      "name": "Ariful Islam",
      "location": "dhaka, Gazipur",
      "bloodGroup": "A-",
      "time": "4 july",
    },
    {
      "name": "Mariom akter",
      "location": "dhaka, Dhanmondi",
      "bloodGroup": "B-",
      "time": "9 june",
    },
    {
      "name": "Rubel",
      "location": "dhaka, Mirpur",
      "bloodGroup": "O+",
      "time": "28 february",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    return new CustomScrollView(
      slivers: [
        new SliverToBoxAdapter(
          child: new CarouselSlider.builder(
            carouselController: _controller,
            options: new CarouselOptions(
                viewportFraction: 1.0,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: new Container(
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: new Offset(5, 8),
                          blurRadius: 10,
                        ),
                      ]),
                  height: 250,
                  width: double.infinity,
                  margin: EdgeInsets.all(0),
                  child: new Image.network(
                    imgList[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        new SliverToBoxAdapter(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map(
              (entry) {
                return GestureDetector(
                  onTap: () {
                    _controller.animateToPage(entry.key);
                  },
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == entry.key
                          ? new Color(0xFFFF2156)
                          : Colors.black.withOpacity(0.2),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
        new SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: new SliverGrid(
            delegate: new SliverChildBuilderDelegate(
              (context, index) {
                return new MyGridCard(
                  context: context,
                  index: index,
                  src: gridItems[index]["src"],
                  label: gridItems[index]["label"],
                  widgetToNavigate: gridItems[index]["onTap"],
                );
              },
              childCount: gridItems.length,
            ),
            gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          ),
        ),
        new SliverAppBar(
          pinned: true,
          titleTextStyle: new TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
          automaticallyImplyLeading: false,
          title: new Text("Donation Request"),
          backgroundColor: Colors.white,
        ),
        new SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: new SliverList(
            delegate: new SliverChildBuilderDelegate(
              (context, index) {
                return new MyListCard(
                  context: context,
                  index: index,
                  requestData: requestList[index],
                );
              },
              childCount: requestList.length,
            ),
          ),
        ),
      ],
    );
  }
}
