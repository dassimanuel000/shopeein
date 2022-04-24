// ignore_for_file: prefer_const_constructors, unnecessary_new, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/ReferalScreen.dart';
import 'package:shopeein/widgets/appBar_close.dart';
import 'package:shopeein/widgets/app_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mBackgroundColor,
        appBar: appBarTitle(context, "Notification"),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: mBackgroundColor,
                  child: SafeArea(
                    child: Column(
                      children: <Widget>[
                        Expanded(child: Container()),
                        new TabBar(
                          tabs: [
                            new Tab(
                                icon: Padding(
                              padding: const EdgeInsets.only(top: 1.0),
                              child: Text(
                                " All ",
                                style: TextStyle(
                                    color: mBackgroundColor,
                                    fontSize: 12.0,
                                    fontFamily: 'Roboto'),
                              ),
                            )),
                            new Tab(
                                icon: Padding(
                              padding: const EdgeInsets.only(top: 1.0),
                              child: Text(
                                " Orders Update ",
                                style: TextStyle(
                                    color: mBackgroundColor,
                                    fontSize: 12.0,
                                    fontFamily: 'Roboto'),
                              ),
                            )),
                            new Tab(
                                icon: Padding(
                              padding: const EdgeInsets.only(top: 1.0),
                              child: Text(
                                " Promotions ",
                                style: TextStyle(
                                    color: mBackgroundColor,
                                    fontSize: 12.0,
                                    fontFamily: 'Roboto'),
                              ),
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                listnotif(context),
                listnotif(context),
                listnotif(context),
              ],
            ),
          ),
        ));
  }
}

Widget listnotif(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    physics: BouncingScrollPhysics(),
    child: Column(
      children: [
        SizedBox(
          width: context.width() * 0.9,
          height: 200.0,
          child: Image.network(
            "https://raw.githubusercontent.com/dassimanuel000/shopeein/pdf/bacs.png",
            height: 200.0,
            width: 200.0,
          ),
        ),
        boxnotif(context),
        SizedBox(
          height: 10.0,
        ),
        boxnotif(context),
        SizedBox(
          height: 10.0,
        ),
        boxnotif(context),
        SizedBox(
          height: 10.0,
        ),
      ],
    ),
  );
}

Widget boxnotif(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.all(15.0),
        height: 200.0,
        width: context.width(),
        child: Image.network(
          "https://i.ibb.co/1RLBHyh/swiper-Home.png",
          height: 200.0,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(17.0),
        child: Text(
          "Clock is ticking  faster than before",
          textAlign: TextAlign.left,
          style: kbordStyle,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(17.0),
        child: Text(
          "Flat 75% off ...",
          textAlign: TextAlign.left,
          style: kSubtitleStyle,
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ReferalScreen()));
        },
        child: Container(
          height: 30.0,
          width: context.width() / 3,
          decoration: boxDecoration(
            color: mPrimaryColor,
            bgColor: mBackgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Center(
              child: Text(
                " Shop Now ",
                style: TextStyle(
                    color: mPrimaryColor, fontSize: 16.0, fontFamily: 'Roboto'),
              ),
            ),
          ),
        ),
      )
    ],
  );
}
