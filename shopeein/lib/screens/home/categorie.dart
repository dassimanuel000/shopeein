// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/home/allCategorie.dart';
import 'package:shopeein/screens/home/navBarItems.dart';
import 'package:shopeein/screens/home/productList.dart';
import 'package:shopeein/widgets/app_widget.dart';

class Categorie extends StatefulWidget {
  const Categorie({Key? key}) : super(key: key);

  @override
  _CategorieState createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
          Container(
            height: 200.0,
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/bacs.png",
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 70.0)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_rounded,
                          size: 20, color: mBackgroundColor),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Categories",
                        style:
                            TextStyle(color: mBackgroundColor, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        decoration: boxDecoration(
                            color: mBackgroundColor,
                            bgColor: Colors.transparent,
                            radius: 2.0),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            "Trending Offers",
                            style: TextStyle(
                                color: mBackgroundColor, fontSize: 12.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                            "Dresses to be noticed \n Lets Create Your Own Style"),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: context.width() / 5,
                        decoration: boxDecoration(
                            bgColor: mBackgroundColor, radius: 2.0),
                        child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.ios_share_outlined,
                                    size: 14.0, color: mPrimaryColor),
                                Text(
                                  "Share",
                                  style: TextStyle(
                                      color: mPrimaryColor, fontSize: 12.0),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Categories",
              style: kbordStyle,
              overflow: TextOverflow.visible,
            ),
          ),
          catCard(context, "WOMEN", "provided ScrollController is  to more"),
          catCard(
              context, "Footwear", "provided ScrollController is currently "),
          catCard(context, "Kids", "provided  is currently attached to more"),
        ]));
  }
}

Widget catCard(BuildContext context, String title, String subtitle) {
  double sizer = context.width();
  sizer = sizer - 15.0;
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
        height: sizer / 2,
        width: sizer,
        decoration: boxDecoration(radius: 5.0, showShadow: true),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/catd.png",
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 130.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AllCategories(
                              indexs: title,
                            )));
                  },
                  child: Hero(
                    tag: title,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(title, style: kTitleStyle),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    subtitle,
                    style: kSubtitleStyle,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                            MaterialPageRoute(
                                builder: (context) => ProductList()));
                      },
                      child: Container(
                        height: 30.0,
                        width: sizer / 4,
                        decoration:
                            boxDecoration(bgColor: mPrimaryColor, radius: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shop Now",
                              style: TextStyle(
                                  color: mBackgroundColor, fontSize: 12.0),
                            ),
                            Icon(Icons.arrow_forward_ios_outlined,
                                size: 12.0, color: mBackgroundColor),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
  );
}
