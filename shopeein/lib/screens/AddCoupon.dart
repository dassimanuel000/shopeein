// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';

class AddCoupon extends StatefulWidget {
  const AddCoupon({Key? key}) : super(key: key);

  @override
  _AddCouponState createState() => _AddCouponState();
}

class _AddCouponState extends State<AddCoupon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mBackgroundColor,
        appBar: appBarTitle(context, "Apply Coupon"),
        body: ListView(children: [
          Center(
              child: Text(
            "Coupons",
            style: kTitleStyle,
          )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DottedBorder(
              color: iconColorSecondary,
              strokeWidth: 1,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://i.ibb.co/b3QLv9B/coup2.png",
                    ),
                    Text(
                      "You save \$2",
                      style: kSubtitleStyle,
                    ),
                    Text(
                      "Extra 2% of For sal",
                      style: kbordStyle,
                    ),
                    Text(
                      "T&C",
                      style: TextStyle(
                          fontSize: 12.0, color: mButtonFacebookColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(),
                    ),
                    Text(
                      "Coupon Code ",
                      style: kSubtitleStyle,
                    ),
                    Text(
                      " A B C D E F D D F",
                      style: kTitleStyle,
                    ),
                    Container(
                      height: 30.0,
                      width: context.width() / 4,
                      decoration:
                          boxDecoration(bgColor: mPrimaryColor, radius: 2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Apply ",
                            style: TextStyle(
                                color: mBackgroundColor, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
