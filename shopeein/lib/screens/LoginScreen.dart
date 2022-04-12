// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/Home.dart';
import 'package:shopeein/screens/RegisterScreen.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';
import 'package:shopeein/widgets/buttonHome.dart';

class LoginScreen extends StatefulWidget {
  static String tag = '/LoginScreen';

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  TextEditingController? keyword;

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
            child: Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                color: mPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Image.network("https://i.ibb.co/5FQ65YL/sp.png"),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login ",
                    style: kTitleStyle,
                  ),
                  Text(
                    " or ",
                    style: kSubtitleStyle,
                  ),
                  Text(
                    "Signup ",
                    style: kTitleStyle,
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
                  color: iconColorSecondary,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                        child: TextField(
                          controller: keyword, //set user_pass controller
                          decoration: InputDecoration(
                            fillColor: iconColorSecondary,
                            filled: true, // dont forget this line
                            hintText: '+91 ',
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.all(0),
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          onSubmitted: (value) {},
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 30,
                      color: iconColorSecondary,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 5.0),
                        child: TextField(
                          controller: keyword, //set user_pass controller
                          decoration: InputDecoration(
                            fillColor: iconColorSecondary,
                            filled: true, // dont forget this line
                            hintText: ' Enter Mobile No',
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.all(0),
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          onSubmitted: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
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
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RoundedButton(
              img: Icons.self_improvement_outlined,
              press: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
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
