// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shopeein/constant/color.dart';
import 'package:shopeein/main.dart';
import 'package:shopeein/screens/ReferalScreen.dart';
import 'package:shopeein/screens/notif.dart';
import 'package:shopeein/screens/orderScreen.dart';

AppBar appHome(BuildContext context) {
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

Drawer drawerHome(BuildContext context) {
  return Drawer(
    child: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.only(top: 32),
        child: Column(
          children: [
            8.height,
            Row(
              children: [
                Image.network("https://i.ibb.co/xsKrrcG/people.png",
                        width: 30, height: 30)
                    .paddingOnly(left: 8),
                Text('User Name', style: kSubtitleStyle),
              ],
            ),
            4.height,
            Divider(thickness: 1),
            ListTile(
              visualDensity: VisualDensity(vertical: -4),
              onTap: () {
                finish(context);
                OrderScreen().launch(context);
              },
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.shopping_basket_outlined,
                      size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text(' Orders', style: kSubtitleStyle),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: -2),
              onTap: () {
                finish(context);
                NotificationScreen().launch(context);
              },
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.notifications_active,
                      size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text('Notifications', style: kSubtitleStyle),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: -2),
              onTap: () {
                finish(context);
                //PSSubscriptionsScreen().launch(context);
              },
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.replay_circle_filled_sharp,
                      size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text('Return and Refund', style: kSubtitleStyle),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: -2),
              onTap: () {
                finish(context);
                //PSWishListScreen().launch(context);
              },
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.card_giftcard_outlined,
                      size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text('My Reward', style: kSubtitleStyle),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(thickness: 1),
            ListTile(
              visualDensity: VisualDensity(vertical: -2),
              onTap: () {
                finish(context);
                ReferalScreen().launch(context);
              },
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.group_add_outlined,
                      size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text('Referals', style: kSubtitleStyle),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: -2),
              onTap: () {
                finish(context);
                //PSPaymentScreen().launch(context);
              },
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.payment, size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text('Wallets', style: kSubtitleStyle),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: -2),
              onTap: () {
                finish(context);
                //PSPlayProtectScreen().launch(context);
              },
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.location_on_outlined,
                      size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text('Track Order', style: kSubtitleStyle),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: -2),
              onTap: () {
                finish(context);
                //PSSettingScreen().launch(context);
              },
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.maps_home_work_outlined,
                      size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text('Address', style: kSubtitleStyle),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: -2),
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.edit_note, size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text('Terms and Conditions', style: kSubtitleStyle),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading:
                  Icon(Icons.person_pin_circle, size: 20, color: Colors.black54)
                      .paddingOnly(left: 8),
              title: Text('Help Center', style: kSubtitleStyle),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: -4, vertical: -2),
              contentPadding: EdgeInsets.only(left: 8),
              leading: Icon(Icons.help_outline_sharp,
                      size: 20, color: Colors.black54)
                  .paddingOnly(left: 8),
              title: Text('FAQ', style: kSubtitleStyle),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          title: 'Shoppein',
                        )));
              },
              visualDensity: VisualDensity(horizontal: -4, vertical: -4),
              contentPadding: EdgeInsets.only(left: 8),
              title: Text('Power By Shoppein',
                  style: TextStyle(fontSize: 12.0, color: iconColorSecondary)),
            ),
          ],
        ),
      ),
    ),
  );
}
