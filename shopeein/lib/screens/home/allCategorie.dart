//ignore_for_file: prefer_const_literals_to_create_immutables,, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/home/productList.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';

class AllCategories extends StatefulWidget {
  final String indexs;

  const AllCategories({
    required this.indexs,
    Key? key,
  }) : super(key: key);

  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    double sizer = context.width();
    sizer = sizer - 15.0;
    return Scaffold(
        backgroundColor: mBackgroundColor,
        appBar: appBarTitle(context, "Categories"),
        body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 5.0,
              ),
              Hero(
                  tag: widget.indexs,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        height: sizer / 2,
                        width: sizer,
                        decoration:
                            boxDecoration(radius: 5.0, showShadow: true),
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
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Text(widget.indexs, style: kTitleStyle),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "subtitle sizer  15.0;",
                                    style: kSubtitleStyle,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 30.0,
                                        width: sizer / 4,
                                        decoration: boxDecoration(
                                            bgColor: Colors.transparent,
                                            color: mPrimaryColor,
                                            radius: 2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Shop Now",
                                              style: TextStyle(
                                                  color: mPrimaryColor,
                                                  fontSize: 12.0),
                                            ),
                                            Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: 12.0,
                                                color: mPrimaryColor),
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
                  )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(children: [
                  8.height,
                  Row(
                    children: [
                      Text(
                        widget.indexs,
                        style: TextStyle(color: mPrimaryColor),
                      ),
                    ],
                  ),
                  1.height,
                  Divider(thickness: 1),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    onTap: () {
                      finish(context);
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => ProductList()));
                    },
                    contentPadding: EdgeInsets.zero,
                    title: Text(' Ethnics', style: kbordStyle),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                    ),
                  ),
                  Divider(thickness: 1),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    onTap: () {
                      finish(context);
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => ProductList()));
                    },
                    contentPadding: EdgeInsets.zero,
                    title: Text(' Elegances', style: kbordStyle),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                    ),
                  ),
                  Divider(thickness: 1),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    onTap: () {
                      finish(context);
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => ProductList()));
                    },
                    contentPadding: EdgeInsets.zero,
                    title: Text(' Sarees', style: kbordStyle),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                    ),
                  ),
                  Divider(thickness: 1),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    onTap: () {
                      finish(context);
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => ProductList()));
                    },
                    contentPadding: EdgeInsets.zero,
                    title: Text(' Accessoire', style: kbordStyle),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                    ),
                  ),
                  Divider(thickness: 1),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    onTap: () {
                      finish(context);
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => ProductList()));
                    },
                    contentPadding: EdgeInsets.zero,
                    title: Text(' Wears', style: kbordStyle),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                    ),
                  ),
                  Divider(thickness: 1),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    onTap: () {
                      finish(context);
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => ProductList()));
                    },
                    contentPadding: EdgeInsets.zero,
                    title: Text(' Kurtis ', style: kbordStyle),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.0,
                    ),
                  ),
                ]),
              ),
              catCard(context, "Footwear",
                  "provided ScrollController is currently "),
              catCard(
                  context, "Kids", "provided  is currently attached to more"),
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
