// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/home/apphome.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double sizer = context.width();
    sizer = sizer - 15.0;
    return Scaffold(
      key: _scaffoldKey,
      appBar: appIndex(context),
      drawer: drawerHome(context),
      body: Text("data"),
    );
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
