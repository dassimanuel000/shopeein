// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';

class ReferalScreen extends StatefulWidget {
  const ReferalScreen({Key? key}) : super(key: key);

  @override
  _ReferalScreenState createState() => _ReferalScreenState();
}

class _ReferalScreenState extends State<ReferalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      appBar: appBarTitle(context, "Referals & Friend Earn"),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child:
              Text("Referals & Friend Earn 5\$ Points", style: kSubtitleStyle),
        ),
        Center(
          child: Image.network(
              "https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/gisd.png"),
        ),
        Center(
          child: Text("Your Code : " + " AB01S"),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                decoration: boxDecoration(
                  bgColor: mPrimaryColor,
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.stairs_outlined,
                      color: mBackgroundColor,
                      size: 22,
                    ),
                    onPressed: () {}),
              ),
              Container(
                  height: 50.0,
                  width: 250.0,
                  decoration: boxDecoration(
                    bgColor: iconColorSecondary,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "TOTAL REFERRED FRIENDS",
                            style: kSubtitleStyle,
                          ),
                        ),
                        Text(
                          "5",
                          style: kbordStyle,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
              child: Text("Share Your link &  Earn ", style: kbordStyle)),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(
                height: 50.0,
                width: 250.0,
                decoration: boxDecoration(
                  bgColor: mPrimaryColor,
                ),
                child: Container(
                  decoration: boxDecoration(
                    color: mBorderColor,
                  ),
                  child: RoundedInput(
                    hintText: 'https://raw.githubusercontent.com',
                  ),
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: boxDecoration(
                  bgColor: mPrimaryColor,
                ),
                child: Icon(
                  Icons.copy_rounded,
                  color: mBackgroundColor,
                  size: 22,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
