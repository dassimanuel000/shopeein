// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/cart.dart';
import 'package:shopeein/screens/home/apphome.dart';
import 'package:shopeein/screens/home/navBarItems.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';

class Whishlist extends StatefulWidget {
  const Whishlist({Key? key}) : super(key: key);

  @override
  _WhishlistState createState() => _WhishlistState();
}

class _WhishlistState extends State<Whishlist> {
  final List<String> _listItem = [
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product.png',
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product2.png',
    'https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/product2.png'
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double sizer = context.width();
    sizer = sizer - 15.0;
    return Scaffold(
        key: _scaffoldKey,
        appBar: appIndex(context),
        drawer: drawerHome(context),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 3.0),
                child: Text(
                  "3 Items",
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
                              height: sizer * 0.5,
                              decoration: boxDecoration(
                                  bgColor: mBackgroundColor,
                                  showShadow: true,
                                  radius: 2.0),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
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
                                              Icons.close,
                                              color: mPrimaryColor,
                                              size: 12.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          width: sizer / 4.5,
                                          height: sizer / 4,
                                          child: Image.network(
                                            item,
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Text(
                                        "New Fashion",
                                        style: kbordStyle,
                                      )),
                                      Center(
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: ' \$450.99 ',
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.green,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' \$900.99',
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey,
                                                  decoration: TextDecoration
                                                      .lineThrough,
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
                                                        style: TextStyle(
                                                          color: Colors.green,
                                                          fontSize: 8.0,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ))),
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
                                            height: 20.0,
                                            decoration: boxDecoration(
                                                bgColor: mPrimaryColor,
                                                radius: 2.0,
                                                showShadow: false),
                                            child: Center(
                                              child: Text(
                                                "Add to Cart",
                                                style: TextStyle(
                                                    color: mBackgroundColor,
                                                    fontSize: 10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    )),
              )
            ]));
  }

  AppBar appIndex(BuildContext context) {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        child: Icon(
          Icons.sort_rounded,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      title: Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: const Image(
          image: NetworkImage('https://i.ibb.co/SQvqyjF/index.png'),
        ),
      ),
      actions: <Widget>[
        InkWell(
          child: Icon(
            Icons.search_sharp,
            color: Colors.white,
            size: 16.0,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 10.0),
        InkWell(
          child: Icon(
            Icons.dashboard_customize_outlined,
            color: Colors.white,
            size: 16.0,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 10.0),
        InkWell(
          child: Icon(
            Icons.notification_add_outlined,
            color: Colors.white,
            size: 16.0,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 10.0),
        InkWell(
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 16.0,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }
}
