// ignore_for_file: prefer_const_constructors, avoid_print, avoid_unnecessary_containers, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/screens/home/categorie.dart';
import 'package:shopeein/screens/home/delivery.dart';
import 'package:shopeein/screens/home/fanclub.dart';
import 'package:shopeein/screens/home/index.dart';
import 'package:shopeein/screens/home/navBarItems.dart';
import 'package:shopeein/screens/home/whishlist.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/widgets/app_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  late PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Text(
        "data"); /*PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: navBarItems,
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: false, // Default is true.
      resizeToAvoidBottomInset:
          false, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
        boxShadow: [
          BoxShadow(
            color: iconColorSecondary.withOpacity(0.6),
            spreadRadius: 8,
            blurRadius: 6,
            offset: Offset(0, 1.0),
          ),
        ],
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );*/
  }

  List<Widget> _buildScreens() {
    return [Index(), Fanclub(), Categorie(), Whishlist(), Delivery()];
  }
}
/*
class TabBarMaterialWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const TabBarMaterialWidget({
    required this.index,
    required this.onChangedTab,
    Key? key,
  }) : super(key: key);

  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null),
    );

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(
              index: 0, icon: Icon(Icons.shopping_bag_outlined), text: "Home"),
          buildTabItem(
              index: 1,
              icon: Icon(Icons.people_outline_sharp),
              text: "Fan Club"),
          placeholder,
          buildTabItem(
              index: 2,
              icon: Icon(Icons.favorite_outline_sharp),
              text: "Whishlist"),
          buildTabItem(
              index: 3,
              icon: Icon(Icons.bus_alert_outlined),
              text: "4Hr Delivery"),
        ],
      ),
    );
  }

  Widget buildTabItem({
    required int index,
    required Icon icon,
    required String text,
  }) {
    final isSelected = index == widget.index;

    return IconTheme(
      data: IconThemeData(
        color: isSelected ? mPrimaryColor : appTextColorSecondary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            IconButton(
              icon: icon,
              onPressed: () => widget.onChangedTab(index),
            ),
            Text(
              text,
              style: TextStyle(
                  color: isSelected ? mPrimaryColor : appTextColorSecondary,
                  fontSize: 10.0),
            )
          ],
        ),
      ),
    );
  }
}
*/