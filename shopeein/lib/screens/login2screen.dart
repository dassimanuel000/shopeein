// ignore_for_file:, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/resetPassword.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({Key? key}) : super(key: key);

  @override
  _LoginScreensState createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "Login to your Account  ",
                          style: kTitleStyle,
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: boxDecoration(
                      color: mBorderColor,
                    ),
                    child: RoundedInput(
                      hintText: '+91 ' + ' ' + ' 99 88 77 55 55',
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: boxDecoration(
                      color: mBorderColor,
                    ),
                    child: RoundedInput(
                      hintText: 'Password',
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " ",
                        style: kSubtitleStyle,
                      ),
                      InkWell(
                        child: Text(
                          " Forgot your Password ?",
                          style: TextStyle(color: mButtonFacebookColor),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ResetPassword()));
                        },
                        child: Text(
                          " Reset here",
                          style: TextStyle(color: mPrimaryColor),
                        ),
                      )
                    ],
                  )),
            ]));
  }
}
