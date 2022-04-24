// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/Filter.dart';
import 'package:shopeein/screens/cart.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopeein/widgets/app_widget.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<String> _listItem = [
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product.png',
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product2.png',
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product2.png',
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product.png',
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product.png',
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product2.png',
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product2.png',
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product.png'
  ];

  @override
  Widget build(BuildContext context) {
    double sizer = context.width();
    sizer = sizer - 15.0;
    return Scaffold(
        backgroundColor: mBackgroundColor,
        appBar: appBarTitle(context, "Product List"),
        bottomNavigationBar: Row(
          children: [
            InkWell(
              onTap: () {
                shortPopup(context);
              },
              child: Container(
                height: 30.0,
                width: sizer / 2,
                decoration: boxDecoration(
                    bgColor: mPrimaryColor, color: mBackgroundColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.stacked_bar_chart_rounded,
                        size: 12.0, color: mBackgroundColor),
                    Text(
                      "Short By",
                      style: TextStyle(color: mBackgroundColor, fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            ),
            InkResponse(
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(builder: (context) => Filter()));
              },
              child: Container(
                height: 30.0,
                width: sizer / 2,
                decoration: boxDecoration(
                    bgColor: mPrimaryTextColor, color: mBackgroundColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.filter_alt_outlined,
                        size: 12.0, color: mBackgroundColor),
                    Text(
                      "Filters ",
                      style: TextStyle(color: mBackgroundColor, fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Our Products",
                  style: kbordStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 3.0),
                child: Text(
                  "42186 Products",
                  style: kSubtitleStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: _listItem
                          .map(
                            (item) => Container(
                              width: sizer / 3,
                              decoration: boxDecoration(
                                  bgColor: mBackgroundColor,
                                  showShadow: true,
                                  radius: 2.0),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 40.0,
                                            height: 15.5,
                                            decoration: boxDecoration(
                                                bgColor: mBlue,
                                                radius: 2.0,
                                                showShadow: true),
                                            child: Center(
                                              child: Text(
                                                "40% OFF",
                                                style: TextStyle(
                                                    color:
                                                        appTextColorSecondary,
                                                    fontSize: 8.0),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_sharp,
                                            color: mPrimaryTextColor,
                                            size: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context,
                                                  rootNavigator: true)
                                              .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      Cart()));
                                        },
                                        child: Container(
                                          width: sizer / 4.5,
                                          height: sizer / 4,
                                          child: Image.network(
                                            item,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                        child: Text(
                                      "New Fashion",
                                      style: kbordStyle,
                                    )),
                                    Center(
                                      child: new RichText(
                                        textAlign: TextAlign.center,
                                        text: new TextSpan(
                                          children: <TextSpan>[
                                            new TextSpan(
                                              text: ' \$450.99 ',
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
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Center(
                                        child: SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  136,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    children: [
                                                      RatingBar.builder(
                                                        itemSize: 10,
                                                        initialRating:
                                                            double.parse(
                                                          "4",
                                                        ),
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        itemCount: 5,
                                                        itemPadding:
                                                            EdgeInsets.zero,
                                                        itemBuilder:
                                                            (context, _) =>
                                                                const Icon(
                                                          Icons
                                                              .star_border_rounded,
                                                          color: kYellowColor,
                                                          size: 9.0,
                                                        ),
                                                        onRatingUpdate:
                                                            (rating) {
                                                          debugPrint(rating
                                                              .toString());
                                                        },
                                                        unratedColor:
                                                            contentTextColor,
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 18,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 1,
                                                      vertical: 3,
                                                    ),
                                                    child: Text(
                                                      ' (4.5)',
                                                      style: new TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 8.0,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )))
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    )),
              )
            ]));
  }
}

shortPopup(context) async {
  double sizer = double.infinity;
  sizer = sizer - 100.0;
  return showDialog(
      context: context,
      builder: (context) {
        return Container(
          decoration: boxDecoration(bgColor: mBackgroundColor),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.stacked_bar_chart_outlined,
                            color: Colors.white,
                            size: 16.0,
                          ),
                          Text(
                            "Sort By",
                            style: kbordStyle,
                          ),
                        ],
                      ),
                    ),
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
                  ],
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
                          "Cancel",
                          style: TextStyle(
                              color: textPrimaryColorGlobal, fontSize: 12.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      height: 30.0,
                      width: (sizer / 2) - 35,
                      decoration: boxDecoration(
                          bgColor: mPrimaryColor, color: mBackgroundColor),
                      child: Center(
                        child: Text(
                          "Apply",
                          style: TextStyle(
                              color: mBackgroundColor, fontSize: 12.0),
                        ),
                      ),
                    ),
                  ])))
            ],
          ),
        );
      });
}
