// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_new

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/ApplyCoupon.dart';
import 'package:shopeein/screens/home/productDetail.dart';
import 'package:shopeein/widgets/app_widget.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    double sizer = context.width();
    sizer = sizer - 15.0;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: mBackgroundColor,
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                "cart",
                style: kbordStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          actions: <Widget>[
            InkWell(
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  color: mPrimaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 16.0,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(width: 20)
          ],
        ),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 3.0),
                child: Text(
                  "1 Items",
                  style: kSubtitleStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: sizer / 2,
                  decoration: boxDecoration(
                    bgColor: iconColorSecondary,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: sizer / 4,
                        child: Center(
                          child: Image.network(
                            "https://github.com/dassimanuel000/shopeein/blob/pdf/onepRO.png?raw=true",
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "New Fashion ",
                              style: kTitleStyle,
                            ),
                            new RichText(
                              textAlign: TextAlign.center,
                              text: new TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: '\$450.99 ',
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                  new TextSpan(
                                    text: ' \$900.99',
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            new RichText(
                              textAlign: TextAlign.center,
                              text: new TextSpan(
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: 'Min 40% OFF ',
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Select size : ",
                                  textAlign: TextAlign.left,
                                  style: kbordStyle,
                                ),
                                Container(
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: boxDecoration(
                                      radius: 5.0,
                                      bgColor: mBackgroundColor,
                                      showShadow: true),
                                  child: Center(
                                    child: Text(
                                      "M",
                                      style: kbordStyle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          decoration: BoxDecoration(
                                            color: contentTextColor,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.minimize_rounded,
                                              color: Colors.white,
                                              size: 12.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          decoration: BoxDecoration(
                                            color: mPrimaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 12.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, right: 10.0),
                                    child: Container(
                                      height: 30.0,
                                      width: sizer / 4,
                                      decoration: boxDecoration(
                                          bgColor: mPrimaryColor, radius: 2.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Remove",
                                            style: TextStyle(
                                                color: mBackgroundColor,
                                                fontSize: 12.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ApplyCoupon()));
                  },
                  child: Container(
                    height: 40.0,
                    decoration: boxDecoration(
                      showShadow: true,
                      radius: 1.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Apply Coupon ",
                            textAlign: TextAlign.left,
                            style: kbordStyle,
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: appTextColorSecondary,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  decoration: boxDecoration(showShadow: true, radius: 2.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Details',
                                style: kbordStyle,
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Product Cost', style: kSubtitleStyle),
                              Text(
                                '\$${2.toString()}',
                                style: kSubtitleStyle,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery Cost',
                                style: kSubtitleStyle,
                              ),
                              Text(
                                '\$20',
                                style: kSubtitleStyle,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Product Cost', style: kSubtitleStyle),
                              Text(
                                '\$${2.toString()}',
                                style: kSubtitleStyle,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery Cost',
                                style: kSubtitleStyle,
                              ),
                              Text(
                                '\$20',
                                style: kSubtitleStyle,
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Cost',
                                style: kbordStyle,
                              ),
                              Text(
                                '\$${8.toString()}',
                                style: kbordStyle,
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      child: Row(children: [
                    Container(
                      height: 30.0,
                      width: sizer / 2,
                      decoration: boxDecoration(
                          bgColor: iconColorSecondary, color: mBackgroundColor),
                      child: Center(
                        child: Text(
                          "\$ 80.00",
                          style: TextStyle(
                              color: textPrimaryColorGlobal, fontSize: 12.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProductDetail()));
                      },
                      child: Container(
                        height: 30.0,
                        width: (sizer / 2) - 35,
                        decoration: boxDecoration(
                            bgColor: mPrimaryColor, color: mBackgroundColor),
                        child: Center(
                          child: Text(
                            "Confirm order ",
                            style: TextStyle(
                                color: mBackgroundColor, fontSize: 12.0),
                          ),
                        ),
                      ),
                    ),
                  ])))
            ]));
  }
}
