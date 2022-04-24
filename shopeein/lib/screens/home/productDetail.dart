// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mBackgroundColor,
        appBar: appBarTitle(context, "Product Detail"),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.network(
                  "https://i.ibb.co/gZHHhgW/detail.png",
                  height: context.width() - 100,
                  width: context.width() - 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                text: 'Sold By : ',
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                ),
                              ),
                              new TextSpan(
                                text: 'SHOPPEIN',
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  color: mPrimaryColor,
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
                                text: 'Status : ',
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                ),
                              ),
                              new TextSpan(
                                text: 'In-Stock',
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                  text: 'You Pay Only ', style: kbordStyle),
                              new TextSpan(
                                text: '\$5',
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  color: mPrimaryColor,
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
                                text: 'Save \$3',
                                style: new TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Apply Coupon",
                      style: kSubtitleStyle,
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                  text: 'Easy 7 Days Return & Exchange',
                                  style: kbordStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Choose your favorute Apply Coupon",
                      style: kSubtitleStyle,
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      "Select size : ",
                      textAlign: TextAlign.left,
                      style: kbordStyle,
                    ),
                    sizee('S'),
                    sizee('M'),
                    sizee('L'),
                    sizee('XL'),
                    sizee('XXL'),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                decoration:
                                    boxDecoration(bgColor: mBackgroundColor),
                                height: 400.0,
                                width: context.width() * 0.5,
                                child: Text("data"),
                              );
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Size Chart ",
                          textAlign: TextAlign.right,
                          style: kbordStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(children: [
                    Text(
                      "Available CoLor ",
                      textAlign: TextAlign.left,
                      style: kbordStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: mPrimaryColor, shape: BoxShape.circle),
                        width: 15.0,
                        height: 15.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: successColor, shape: BoxShape.circle),
                        width: 15.0,
                        height: 15.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: mButtonFacebookColor,
                            shape: BoxShape.circle),
                        width: 15.0,
                        height: 15.0,
                      ),
                    ),
                  ])),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Product Highlights"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: context.width() / 4,
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                  text: 'Product Detail', style: kbordStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Choose your favorute Apply Coupon",
                      style: kSubtitleStyle,
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                  text: 'Materiel Care', style: kbordStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Lorem Choose your favorute Apply Coupon",
                      style: kSubtitleStyle,
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            children: <TextSpan>[
                              new TextSpan(text: 'Ratings', style: kbordStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration:
                              boxDecoration(bgColor: successColor, radius: 2.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "4.5",
                              style: TextStyle(
                                  color: mBackgroundColor, fontSize: 12.0),
                            ),
                          ),
                        ),
                        Text(
                          "5 Rating  and 1 Reviews",
                          style: kSubtitleStyle,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            children: <TextSpan>[
                              new TextSpan(
                                  text: 'Check Delivery', style: kbordStyle),
                            ],
                          ),
                        ),
                      ],
                    ),
                    RoundedInput(hintText: "Enter Pincode")
                  ],
                ),
              ),
              Divider(),
              headText("View Similar"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(children: [
                  productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
                  productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
                  productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
                  productCard(() {}, "https://i.ibb.co/R7bP0XY/fas.png"),
                ]),
              ),
            ]));
  }

  Widget sizee(String size) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
      child: Container(
        height: 20.0,
        width: 20.0,
        decoration: boxDecoration(
            radius: 2.0, bgColor: mBackgroundColor, showShadow: true),
        child: Center(
          child: Text(
            size,
            style: kbordStyle,
          ),
        ),
      ),
    );
  }

  Widget headText(String title) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              title,
              style: kbordStyle,
            ),
          ),
          Container(
            decoration: boxDecoration(bgColor: mPrimaryColor, radius: 2.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "View All",
                style: TextStyle(color: mBackgroundColor, fontSize: 12.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget productCard(Function callCat, String img) {
    return InkWell(
      onTap: () {
        callCat;
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.network(
              img,
              width: 150.0,
              height: 200.0,
            ),
            Text(
              "New Fashion ",
              style: kbordStyle,
            ),
            new RichText(
              textAlign: TextAlign.center,
              text: new TextSpan(
                children: <TextSpan>[
                  new TextSpan(
                    text: 'From \$900.99',
                    style: new TextStyle(
                      fontSize: 9.0,
                      color: Colors.grey,
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
                      fontSize: 9.0,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
