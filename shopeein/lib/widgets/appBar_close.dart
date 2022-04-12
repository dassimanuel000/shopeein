// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shopeein/constant/color.dart';

AppBar appBar_close(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
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
      SizedBox(width: 10),
      SizedBox(width: 20)
    ],
  );
}

AppBar appBarTitle(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      title,
      style: kTitleStyle,
    ),
  );
}
