// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/AddCoupon.dart';
import 'package:shopeein/widgets/appBar_close.dart';

class ApplyCoupon extends StatefulWidget {
  const ApplyCoupon({Key? key}) : super(key: key);

  @override
  _ApplyCouponState createState() => _ApplyCouponState();
}

class _ApplyCouponState extends State<ApplyCoupon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mBackgroundColor,
        appBar: appBarTitle(context, "Apply Coupon"),
        body: ListView(
          children: [
            Center(
                child: Text(
              "Coupons",
              style: kTitleStyle,
            )),
            coupon("https://i.ibb.co/b3QLv9B/coup2.png"),
            SizedBox(height: 20.0),
            coupon("https://i.ibb.co/ZT4BLvV/coup1.png"),
            SizedBox(height: 20.0),
            coupon("https://i.ibb.co/ZT4BLvV/coup1.png"),
            SizedBox(height: 20.0),
            coupon("https://i.ibb.co/ZT4BLvV/coup1.png"),
            SizedBox(height: 20.0),
            coupon("https://i.ibb.co/ZT4BLvV/coup1.png"),
          ],
        ));
  }

  Widget coupon(String img) {
    double sizer = context.width();
    sizer = sizer - 15.0;
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: DottedBorder(
          color: iconColorSecondary,
          strokeWidth: 1,
          child: Container(
            child: Row(children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddCoupon()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: sizer / 4,
                    height: sizer / 4,
                    child: Image.network(
                      img,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
