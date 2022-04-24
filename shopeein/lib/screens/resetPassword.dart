// ignore_for_file:, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';
import 'package:shopeein/widgets/buttonHome.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                          "Reset Password",
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
                              "Enter your email or mobile no and send a link on your email",
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
                child: RoundedButton(
                  img: Icons.send_and_archive_rounded,
                  press: () {},
                  text: ' Continue ',
                  backgroundColor: mPrimaryColor,
                  textColor: Colors.white,
                ),
              ),
            ]));
  }
}
