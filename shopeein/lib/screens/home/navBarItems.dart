// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shopeein/constant/color.dart';

//factcheck,rule
List<PersistentBottomNavBarItem> navBarItems = [
  PersistentBottomNavBarItem(
    icon: Icon(
      Icons.shopping_bag_outlined,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    title: ("Home"),
    textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12.0),
    activeColorPrimary: mPrimaryColor,
    activeColorSecondary: mPrimaryColor,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
  PersistentBottomNavBarItem(
    icon: Icon(
      Icons.people_outline_sharp,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    title: ("Fan Club"),
    textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12.0),
    activeColorPrimary: mPrimaryColor,
    activeColorSecondary: mPrimaryColor,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
  PersistentBottomNavBarItem(
    icon: Container(
      height: 25.0,
      width: 25.0,
      decoration: BoxDecoration(
        color: appTextColorSecondary,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.calendar_view_month_rounded,
        color: Colors.white,
        size: 12.0,
      ),
    ),
    title: ("Categories"),
    textStyle: TextStyle(
        fontFamily: 'Roboto', fontSize: 12.0, color: appTextColorSecondary),
    activeColorPrimary: mBackgroundColor,
    activeColorSecondary: appTextColorSecondary,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
  PersistentBottomNavBarItem(
    icon: Icon(
      Icons.favorite_border_sharp,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    title: ("Whishlist"),
    textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12.0),
    activeColorPrimary: mPrimaryColor,
    activeColorSecondary: mPrimaryColor,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
  PersistentBottomNavBarItem(
    icon: Icon(
      Icons.bus_alert_outlined,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    iconSize: 12.0,
    title: ("4Hr Delivery"),
    textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 12.0),
    activeColorPrimary: mPrimaryColor,
    activeColorSecondary: mPrimaryColor,
    inactiveColorPrimary: appTextColorSecondary,
    inactiveColorSecondary: appTextColorSecondary,
  ),
];
