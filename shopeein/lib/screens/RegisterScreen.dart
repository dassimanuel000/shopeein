// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/Home.dart';
import 'package:shopeein/screens/orderScreen.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';
import 'package:shopeein/widgets/buttonHome.dart';

class RegisterScreen extends StatefulWidget {
  static String tag = '/RegisterScreen';

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen>
    with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  TextEditingController? keyword;
  bool _isChecked = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: appBar_close(context),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: Text(
                      "Welcome to Shopeein ",
                      style: kTitleStyle,
                    ),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0),
                        child: Text(
                          "Your Mobile number :  ",
                          style: kSubtitleStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.0),
                        child: Text(
                          "+91  99 88 77 55 55",
                          style: kSubtitleStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  color: mBorderColor,
                ),
                child: RoundedInput(
                  hintText: 'Enter Email ID',
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  color: mBorderColor,
                ),
                child: RoundedInput(
                  hintText: 'Enter Name',
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: boxDecoration(
                  color: mBorderColor,
                ),
                child: RoundedInput(
                  hintText: 'Enter date of Birth mm/dd/yyyy',
                ),
              )),
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              )),
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "I agree ",
                    style: kSubtitleStyle,
                  ),
                  InkWell(
                    child: Text(
                      " Terms & Condition",
                      style: TextStyle(color: mButtonFacebookColor),
                    ),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RoundedButton(
              img: Icons.self_improvement_outlined,
              press: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => OrderScreen()));
              },
              text: ' Continue ',
              backgroundColor: mPrimaryColor,
              textColor: Colors.white,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 5,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "or Continue with ",
                      style: kSubtitleStyle,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Center(
                      child: Row(
                        children: [
                          Image.network(
                            "https://i.ibb.co/3yrrrRZ/Google.png",
                            height: 30.0,
                            width: 30.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Image.network(
                            "https://i.ibb.co/T2Q9KgB/fb.jpg",
                            height: 30.0,
                            width: 30.0,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
